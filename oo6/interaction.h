#ifndef INTERACTION_H
#define INTERACTION_H

#include <QObject>
#include <QtQml>

class Interaction:public QObject
{
    Q_OBJECT
    Q_PROPERTY(int easymodel READ easymodel)
    Q_PROPERTY(int difmodel READ difmodel)
public:
   Interaction(QObject *parent=nullptr);

   Q_INVOKABLE void readFile();

    int easymodel();
   //void setEasymodel();

   int difmodel();
   //void setDifmodel();

//   Q_INVOKABLE bool load();

//signals:
//   void easymodelChanged();
//   void difmodelChanged();

private:
    int mEasymodel;
    int mDifmodel;
};


#endif // INTERACTION_H
