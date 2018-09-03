.class public Lcom/sunrise/nfc/Reader;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "idReader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native authId(Ljava/lang/Object;[B)[B
.end method

.method public native getFailCode()I
.end method

.method public native getRegisterNo(Landroid/content/Context;)I
.end method

.method public native nfcSend(Landroid/content/Context;Landroid/nfc/tech/NfcB;)[B
.end method

.method public native openId(Ljava/lang/Object;)[B
.end method

.method public native readInfo(Ljava/lang/Object;[B)[B
.end method

.method public native setServer([BI)V
.end method
