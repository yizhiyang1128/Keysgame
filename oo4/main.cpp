#include <QApplication>
#include <FelgoApplication>
#include <QCoreApplication>
#include <QQmlEngine>
#include <QQmlComponent>
#include <QDebug>

#include "model.h"
#include "interaction.h"

#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{

    QCoreApplication app(argc, argv);

    FelgoApplication felgo;
    qmlRegisterType<Interaction>("game.model",1,0,"Interaction");

    QQmlApplicationEngine engine;
    felgo.initialize(&engine);

    felgo.setLicenseKey(PRODUCT_LICENSE_KEY);
    felgo.setMainQmlFileName(QStringLiteral("qml/Main.qml"));

    //QQmlComponent component(&engine,QUrl("qrc:Set.qml"));


    //Model model;
    //model.readFile();

    engine.load(QUrl(felgo.mainQmlFileName()));




    return app.exec();
}
