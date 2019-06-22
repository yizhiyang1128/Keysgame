#ifndef MODEL_H
#define MODEL_H

#include <QObject>

class Model : public QObject
{
    Q_OBJECT

public:

    Model();
    void readFile();
//    ~Model();

private:
    int mEasymodel;
    int mDifmodel;

};
#endif
// MODEL_H
