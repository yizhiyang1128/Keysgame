#include "model.h"

#include <QFile>
#include <QJsonDocument>
#include <QDebug>
#include <QJsonObject>
#include <QJsonParseError>

Model::Model()
{}


void Model::readFile()
{
    QFile loadFile("model.json");
    if (!loadFile.open(QIODevice::ReadOnly)) {
        qDebug()<<"couldn't open project json";
        return;
    }
    QByteArray allData = loadFile.readAll();
    loadFile.close();

    QJsonParseError json_error;
    QJsonDocument jsonDoc( QJsonDocument::fromJson(allData,&json_error));

    if(json_error.error!=QJsonParseError::NoError)
    {
        qDebug()<<"json error!";
        return;
    }

    QJsonObject rootObj=jsonDoc.object();


    if(rootObj.contains("twomodel")){
         QJsonObject subObj=rootObj.value("twomodel").toObject();
         qDebug()<<"easymodel is:"<<subObj["easymodel"].toInt();
         mEasymodel = subObj["easymodel"].toInt();
         qDebug()<<"difmodel is:"<<subObj["difmodel"].toInt();
         mDifmodel = subObj["difmodel"].toInt();
    }
}

//Model::~Model()
//{

//}



