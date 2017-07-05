#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include<QtNetwork/QTcpSocket>
#include<QtNetwork/QTcpServer>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    QTcpSocket *m_tcpsocket;
     QTcpServer *m_tcpserver;

public slots:
    void newConnect();
    void readMessage();
    void sendMessage();
private slots:

    void on_Btn_send_clicked();



private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
