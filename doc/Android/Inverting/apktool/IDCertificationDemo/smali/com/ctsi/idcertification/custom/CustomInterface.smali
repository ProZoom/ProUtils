.class public interface abstract Lcom/ctsi/idcertification/custom/CustomInterface;
.super Ljava/lang/Object;
.source "CustomInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;
    }
.end annotation


# virtual methods
.method public abstract auth(Lcom/ctsi/idcertification/entity/AuthInfo;)V
.end method

.method public abstract btCheckState()I
.end method

.method public abstract btConnect(Ljava/lang/String;)Z
.end method

.method public abstract btDisconnect()Z
.end method

.method public abstract btReadCard(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract errorCode2Msg(I)Ljava/lang/String;
.end method

.method public abstract getDevicesProperty(I)Lcom/ctsi/idcertification/entity/ReaderProperty;
.end method

.method public abstract nfcConnect(Landroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;
.end method

.method public abstract nfcDisconnect()Ljava/util/Map;
.end method

.method public abstract nfcReadCard(Ljava/lang/String;Ljava/util/List;Landroid/nfc/Tag;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/nfc/Tag;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCTSIBTCallback(Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;)V
.end method

.method public abstract setOnLogInListener(Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;)V
.end method

.method public abstract usbCheckState()Ljava/util/Map;
.end method

.method public abstract usbConnect()Ljava/util/Map;
.end method

.method public abstract usbDisconnect()Ljava/util/Map;
.end method

.method public abstract usbReadCard(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
