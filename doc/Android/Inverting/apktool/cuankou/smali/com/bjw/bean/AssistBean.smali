.class public Lcom/bjw/bean/AssistBean;
.super Ljava/lang/Object;
.source "AssistBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4e00996887761c83L


# instance fields
.field private SendHexA:Ljava/lang/String;

.field private SendHexB:Ljava/lang/String;

.field private SendHexC:Ljava/lang/String;

.field private SendHexD:Ljava/lang/String;

.field private SendTxtA:Ljava/lang/String;

.field private SendTxtB:Ljava/lang/String;

.field private SendTxtC:Ljava/lang/String;

.field private SendTxtD:Ljava/lang/String;

.field public iComDispCount:I

.field public iReflashTime:I

.field private isTxt:Z

.field public sTimeA:Ljava/lang/String;

.field public sTimeB:Ljava/lang/String;

.field public sTimeC:Ljava/lang/String;

.field public sTimeD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    .line 12
    const-string v0, "COMA"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtA:Ljava/lang/String;

    const-string v0, "COMB"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtB:Ljava/lang/String;

    const-string v0, "COMC"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtC:Ljava/lang/String;

    const-string v0, "COMD"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtD:Ljava/lang/String;

    .line 13
    const-string v0, "AA"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexA:Ljava/lang/String;

    const-string v0, "BB"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexB:Ljava/lang/String;

    const-string v0, "CC"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexC:Ljava/lang/String;

    const-string v0, "DD"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexD:Ljava/lang/String;

    .line 14
    const-string v0, "500"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->sTimeA:Ljava/lang/String;

    .line 15
    const-string v0, "500"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->sTimeB:Ljava/lang/String;

    .line 16
    const-string v0, "500"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->sTimeC:Ljava/lang/String;

    .line 17
    const-string v0, "500"

    iput-object v0, p0, Lcom/bjw/bean/AssistBean;->sTimeD:Ljava/lang/String;

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/bjw/bean/AssistBean;->iReflashTime:I

    .line 19
    iput v1, p0, Lcom/bjw/bean/AssistBean;->iComDispCount:I

    .line 9
    return-void
.end method


# virtual methods
.method public getSendA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtA:Ljava/lang/String;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexA:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSendB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtB:Ljava/lang/String;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexB:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSendC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtC:Ljava/lang/String;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexC:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSendD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendTxtD:Ljava/lang/String;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bjw/bean/AssistBean;->SendHexD:Ljava/lang/String;

    goto :goto_0
.end method

.method public isTxt()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    return v0
.end method

.method public setSendA(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendA"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendTxtA:Ljava/lang/String;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendHexA:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSendB(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendB"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendTxtB:Ljava/lang/String;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendHexB:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSendC(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendC"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendTxtC:Ljava/lang/String;

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendHexC:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSendD(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendD"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendTxtD:Ljava/lang/String;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/bjw/bean/AssistBean;->SendHexD:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTxtMode(Z)V
    .locals 0
    .param p1, "isTxt"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/bjw/bean/AssistBean;->isTxt:Z

    .line 27
    return-void
.end method
