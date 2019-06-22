#include "interaction.h"

Interaction::Interaction(QObject *parent):QObject (parent)
{

}

int Interaction::easymodel() const
{
    return m_easymodel;
}
void Interaction::setEasymodel(int e)
{
    m_easymodel = e;
}
int Interaction::difmodel() const
{
    return m_difmodel;
}
void Interaction::setDifmodel(int d)
{
    m_difmodel = d;
}

