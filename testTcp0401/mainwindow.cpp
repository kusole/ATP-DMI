#include "mainwindow.h"
#include "ui_mainwindow.h"
#include<QDataStream>
#include<QByteArray>
#include<QDebug>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    m_tcpserver = new QTcpServer(this);
    m_tcpsocket = new QTcpSocket(this);
    m_tcpserver->listen(QHostAddress::Any,6666);//监听的端口号
    connect(m_tcpserver,SIGNAL(newConnection()), this,SLOT(newConnect()));
}

MainWindow::~MainWindow()
{
    delete ui;
}
void MainWindow::newConnect()
{
    ui->label_txtShow->setText("列车已经连接!!!");
    m_tcpsocket = m_tcpserver->nextPendingConnection();//设置监听
    connect(m_tcpsocket,SIGNAL(readyRead()),
            this,SLOT(readMessage())); //服务器接收客户端的消息
    connect(m_tcpsocket,SIGNAL(disconnected()),
                m_tcpsocket,SLOT(deleteLater()));
}
void MainWindow::readMessage()
{
    QString res;
    res+=m_tcpsocket->readAll();
    ui->label_txtShow_3->setText(res);
}
void MainWindow::sendMessage()
{
    QTextStream out(m_tcpsocket);
    out<<ui->lineEdit->text()<<endl;
    ui->label_txtShow_2->setText("成功");
}
void MainWindow::on_Btn_send_clicked()
{
    sendMessage();
}

