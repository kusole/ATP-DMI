/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QPushButton *Btn_send;
    QLabel *label_txtShow;
    QLineEdit *lineEdit;
    QLabel *label_sendStatus_2;
    QLabel *label_sendStatus_3;
    QLabel *label_sendStatus_4;
    QLabel *label_sendStatus_5;
    QLabel *label_sendStatus_6;
    QLabel *label_txtShow_2;
    QLabel *label_sendStatus_7;
    QLabel *label_txtShow_3;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(372, 203);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        Btn_send = new QPushButton(centralWidget);
        Btn_send->setObjectName(QStringLiteral("Btn_send"));
        Btn_send->setGeometry(QRect(240, 140, 121, 23));
        label_txtShow = new QLabel(centralWidget);
        label_txtShow->setObjectName(QStringLiteral("label_txtShow"));
        label_txtShow->setGeometry(QRect(240, 50, 121, 21));
        lineEdit = new QLineEdit(centralWidget);
        lineEdit->setObjectName(QStringLiteral("lineEdit"));
        lineEdit->setGeometry(QRect(240, 80, 121, 20));
        label_sendStatus_2 = new QLabel(centralWidget);
        label_sendStatus_2->setObjectName(QStringLiteral("label_sendStatus_2"));
        label_sendStatus_2->setGeometry(QRect(20, 80, 171, 21));
        label_sendStatus_3 = new QLabel(centralWidget);
        label_sendStatus_3->setObjectName(QStringLiteral("label_sendStatus_3"));
        label_sendStatus_3->setGeometry(QRect(20, 110, 151, 21));
        label_sendStatus_4 = new QLabel(centralWidget);
        label_sendStatus_4->setObjectName(QStringLiteral("label_sendStatus_4"));
        label_sendStatus_4->setGeometry(QRect(20, 50, 101, 21));
        label_sendStatus_5 = new QLabel(centralWidget);
        label_sendStatus_5->setObjectName(QStringLiteral("label_sendStatus_5"));
        label_sendStatus_5->setGeometry(QRect(20, 20, 181, 21));
        QFont font;
        font.setFamily(QString::fromUtf8("\344\273\277\345\256\213"));
        font.setPointSize(11);
        font.setBold(true);
        font.setItalic(false);
        font.setUnderline(true);
        font.setWeight(75);
        font.setStrikeOut(false);
        label_sendStatus_5->setFont(font);
        label_sendStatus_6 = new QLabel(centralWidget);
        label_sendStatus_6->setObjectName(QStringLiteral("label_sendStatus_6"));
        label_sendStatus_6->setGeometry(QRect(240, 20, 101, 21));
        QFont font1;
        font1.setBold(true);
        font1.setWeight(75);
        label_sendStatus_6->setFont(font1);
        label_txtShow_2 = new QLabel(centralWidget);
        label_txtShow_2->setObjectName(QStringLiteral("label_txtShow_2"));
        label_txtShow_2->setGeometry(QRect(240, 110, 121, 21));
        label_sendStatus_7 = new QLabel(centralWidget);
        label_sendStatus_7->setObjectName(QStringLiteral("label_sendStatus_7"));
        label_sendStatus_7->setGeometry(QRect(20, 140, 81, 21));
        label_txtShow_3 = new QLabel(centralWidget);
        label_txtShow_3->setObjectName(QStringLiteral("label_txtShow_3"));
        label_txtShow_3->setGeometry(QRect(120, 140, 101, 21));
        MainWindow->setCentralWidget(centralWidget);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", Q_NULLPTR));
        Btn_send->setText(QApplication::translate("MainWindow", "\345\217\221\351\200\201\350\241\214\350\275\246\350\256\270\345\217\257\345\214\272\351\227\264", Q_NULLPTR));
        label_txtShow->setText(QString());
        label_sendStatus_2->setText(QApplication::translate("MainWindow", "\350\276\223\345\205\245\350\241\214\350\275\246\350\256\270\345\217\257\350\267\235\347\246\273\357\274\2100-14000\357\274\211\357\274\232", Q_NULLPTR));
        label_sendStatus_3->setText(QApplication::translate("MainWindow", "\345\217\221\351\200\201\347\212\266\346\200\201\357\274\232", Q_NULLPTR));
        label_sendStatus_4->setText(QApplication::translate("MainWindow", "\350\277\236\346\216\245\344\277\241\346\201\257\357\274\232", Q_NULLPTR));
        label_sendStatus_5->setText(QApplication::translate("MainWindow", "\347\256\200\346\230\223\350\241\214\350\275\246\350\256\270\345\217\257\346\250\241\346\213\237\350\275\257\344\273\266", Q_NULLPTR));
        label_sendStatus_6->setText(QApplication::translate("MainWindow", "\347\253\257\345\217\243\345\217\267\357\274\2326666", Q_NULLPTR));
        label_txtShow_2->setText(QString());
        label_sendStatus_7->setText(QApplication::translate("MainWindow", "\345\210\227\350\275\246\345\256\236\346\227\266\350\267\235\347\246\273\357\274\232", Q_NULLPTR));
        label_txtShow_3->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
