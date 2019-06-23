#include "interaction.h"

#include <QFile>
#include <QJsonDocument>
#include <QDebug>
#include <QJsonObject>
#include <QJsonParseError>

Interaction::Interaction(QObject *parent)
    :QObject (parent)
{

}


void Interaction::readFile()
{
    QFile loadFile("/root/oo/model.json");
    if (!loadFile.open(QIODevice::ReadOnly)) {
        qDebug()<<"couldn't open project json";
        return ;
    }
    QByteArray allData = loadFile.readAll();


//    QJsonParseError json_error;
    QJsonDocument jsonDOC(QJsonDocument::fromJson(allData));

//    if(json_error.error!=QJsonParseError::NoError){
//            qDebug()<<"json error!";
//            return;
//    }

    QJsonObject rootObj = jsonDOC.object();

    if(rootObj.contains("twomodel") && rootObj["twomodel"].isObject()){
         QJsonObject subObj=rootObj.value("twomodel").toObject();

         qDebug()<<"easymodel is:"<<subObj["easymodel"].toInt();
         mEasymodel = subObj["easymodel"].toInt();

         qDebug()<<"difmodel is:"<<subObj["difmodel"].toInt();
         mDifmodel = subObj["difmodel"].toInt();
        }
}

int Interaction::easymodel()
{
    return mEasymodel;
}
//void Interaction::setEasymodel()
//{
//    m_easymodel = mEasymodel;
//}
int Interaction::difmodel()
{
    return mDifmodel;
}
//void Interaction::setDifmodel()
//{
//    m_easymodel = mEasymodel;
//}

//bool Interaction::load()
//{

//}
