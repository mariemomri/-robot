#ifndef MYSQL_H
#define MYSQL_H

#include <QObject>
#include <QQmlContext>
#include <QSqlDatabase>
#include <QSqlError>
#include "session.h"

class Mysql : public QObject
{
    Q_OBJECT
public:
    Mysql(QQmlContext *contexte, session *sess);

    Q_INVOKABLE void connectToDatabase();  // Permet d'appeler cette méthode depuis QML
    Q_INVOKABLE void up();
    Q_INVOKABLE void down();
    Q_INVOKABLE void right();
    Q_INVOKABLE void left();
    Q_INVOKABLE void temperature();
    Q_INVOKABLE void checkAvailableDrivers();

private:
    QQmlContext *m_contexte;
    session *m_session;
    QSqlDatabase m_db;
    bool etat;
};

#endif // MYSQL_H
