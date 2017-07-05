#ifndef SPEEDDEAL_H
#define SPEEDDEAL_H
#include <QObject>
#include <QString>
#include <QTimer>

#include <QHostAddress>
#include <QTcpSocket>

class SpeedDeal : public QObject
{
    Q_OBJECT
public:
    SpeedDeal(void);
    SpeedDeal(QList<QObject*> rootobj);

    QObject * getObjcet(QList<QObject*> rootobj, QString rootObjName, QString childObject);
//    void get
    Q_INVOKABLE void connectToServer(QString ip, int port);



private slots:
       void speedUpDate();
       void onConnected();
       void onReadyread();
private:
    QList<QObject*> rootobj;
    QObject * obj;
    QTimer *timer;

    bool netStatus;
    int port;
    QHostAddress *serverIP;
    QTcpSocket *client;

    double speedline[5000]={0.0};
    double dist;     //行车许可距离
    double dist_step;   //每一格的距离33.34，一共14000
    int a;   //加速度
    QString speedlinestr;
    int ss;

    double V_0;
    double V_N;
    double S_0;
    double S_N;


};

#endif // SPEEDDEAL_H
