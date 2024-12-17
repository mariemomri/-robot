#include "mysql.h"
#include <iostream>
using namespace std;
#include <QSqlQuery>

Mysql::Mysql(QQmlContext *contexte, session *sess)
{
    m_contexte = contexte;
    m_session = sess;
}

void Mysql::connectToDatabase()
{
    m_db = QSqlDatabase::addDatabase("QMYSQL");
    m_db.setHostName("localhost");
    m_db.setDatabaseName("robot");
    m_db.setUserName("root");
    m_db.setPassword("");

    if (m_db.open()){
        cout <<"Database connected" << endl;
    }
    else{
        cout <<"erreur : connection non établie" << endl;
    }eza        azdfuiop^$56
    3s
}

void Mysql::up()
{
    QSqlQuery requete;
    requete.prepare("UPDATE 'admin_robotmob' SET `moteur gauche`=1,`moteur droite`=0");
    etat = requete.exec();
}

void Mysql::down()
{
    QSqlQuery requete;
    requete.prepare("UPDATE 'admin_robotmob' SET `moteur gauche`=2,`moteur droite`=0");
    etat = requete.exec();
}

void Mysql::right()
{
    QSqlQuery requete;
    requete.prepare("UPDATE 'admin_robotmob' SET `moteur droite`=1,`moteur gauche`=0");
    etat = requete.exec();
}

void Mysql::left()
{
    QSqlQuery requete;
    requete.prepare("UPDATE 'admin_robotmob' SET `moteur droite`=2,`moteur gauche`=0");
    etat = requete.exec();
}

void Mysql::temperature()
{
    QSqlQuery requete;
    requete.prepare("SELECT `temp`, `humd` FROM 'admin_robotmob'  WHERE idt=1");
    etat = requete.exec();
}
