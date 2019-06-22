#ifndef INTERACTION_H
#define INTERACTION_H

#include <QObject>

class Interaction:public QObject
{
    Q_OBJECT
    Q_PROPERTY(int easymodel READ easymodel WRITE setEasymodel)
    Q_PROPERTY(int difmodel READ difmodel WRITE setDifmodel)
public:
    Interaction(QObject *parent=nullptr);

    int easymodel() const;
    void setEasymodel(int);

    int difmodel() const;
    void setDifmodel(int);

private:
    int m_easymodel;
    int m_difmodel;

};

#endif // INTERACTION_H
