#ifndef INTERACTION_H
#define INTERACTION_H

#include <QObject>
#include <QtQml>

class Interaction:public QObject
{
    Q_OBJECT
    Q_PROPERTY(int easymodel READ easymodel NOTIFY easymodelChanged)
    Q_PROPERTY(int difmodel READ difmodel)
public:
   Interaction(QObject *parent=nullptr);

   void readFile();

   int easymodel();
   //void setEasymodel();

   int difmodel();
   //void setDifmodel();

signals:
   void easymodelChanged();

private:
    int m_easymodel;
    int m_difmodel;
    int mEasymodel;
    int mDifmodel;
};


#endif // INTERACTION_H
