#include "speeddeal.h"
#include <QDebug>
#include <QDate>
#include <QMetaObject>
#include <QVariant>
#include <QArgument>
#include <QDataStream>
#include <QByteArray>
#include <QtMath>

SpeedDeal::SpeedDeal(QList<QObject*> rootobj){
    this->rootobj=rootobj;
    this->obj=NULL;
    this->client = new QTcpSocket(this);
    this->timer = new QTimer(this);
    this->dist=0;
    this->dist_step=33.34;
    this->a=1;

    this->V_0=0;
    this->V_N=0;
    this->S_0=0;
    this->S_N=0;

    connect(this->timer,SIGNAL(timeout()),this,SLOT(speedUpDate()));
    connect(this->client,SIGNAL(connected()),this,SLOT(onConnected()));
}

SpeedDeal::SpeedDeal(void){
    this->timer = new QTimer(this);
    connect(this->timer,SIGNAL(timeout()),this,SLOT(speedUpDate()));
    timer->start(1000);
}

QObject * SpeedDeal::getObjcet(QList<QObject*> rootObj, QString rootObjName, QString childObject){
    for(int i=0; i<rootObj.size(); i++){
        if(rootObj.at(i)->objectName()==rootObjName){
            return rootObj.at(i)->findChild<QObject*>(childObject);
        }
    }
    return NULL;
}

void SpeedDeal::speedUpDate(){
    this->obj=getObjcet(this->rootobj,"rootObject","chartObject");

    this->V_N=this->V_0+this->a*2;
    this->S_N=(this->V_N*this->V_N-this->V_0*this->V_0)/(2*this->a);
    this->S_0 += this->S_N;

    this->V_0=this->V_N;
    qDebug()<< this-> V_0 << ":"<<this->S_0 << ":"<<this->S_0/this->dist_step;

    this->speedlinestr = "";

    int i;
    for(i=0;i<this->dist/this->dist_step-this->S_0/this->dist_step;i++){
        speedlinestr.append(QString::number(speedline[i])+';');
    }
    if(this->V_0>speedline[i-1]){
        this->V_0=(int)speedline[i-1];
    }
    if(this->V_0==0)timer->stop();
    QMetaObject::invokeMethod(obj,"testC",Q_ARG(QVariant, this->dist-this->S_0),Q_ARG(QVariant, this->V_0),Q_ARG(QVariant, this->speedlinestr));
}

void SpeedDeal::connectToServer(QString ip, int port){
    qDebug()<<ip;
    qDebug()<<port;
    client->connectToHost(QHostAddress(ip),port);
}

void SpeedDeal::onConnected(){
    qDebug()<<"连接成功";
    connect(this->client,SIGNAL(readyRead()),this,SLOT(onReadyread()));
}

void SpeedDeal::onReadyread(){
    QByteArray arr=this->client->readAll();
    QString arr_str = arr;
    this->dist=arr_str.toInt();
    for(int i=1;i<this->dist/this->dist_step;i++){
        speedline[i]=qSqrt(2*this->dist_step*a + speedline[i-1]*speedline[i-1]);
        qDebug()<<i<<"  "<<speedline[i];
    }
    for(int i=0;i<this->dist/this->dist_step;i++){
        speedlinestr.append(QString::number(speedline[i])+';');
    }
    timer->start(2000);
    this->S_0=0;
    qDebug()<<this->dist;
    qDebug()<<this->dist/this->dist_step;
    qDebug()<<speedlinestr;
}
