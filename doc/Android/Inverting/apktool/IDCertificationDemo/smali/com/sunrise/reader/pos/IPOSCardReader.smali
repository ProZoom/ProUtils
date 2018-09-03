.class public interface abstract Lcom/sunrise/reader/pos/IPOSCardReader;
.super Ljava/lang/Object;


# virtual methods
.method public abstract findICCard()Z
.end method

.method public abstract findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z
.end method

.method public abstract icCardPowerOff()V
.end method

.method public abstract icCardPowerOn()Z
.end method

.method public abstract icCardTransmitApdu([B)[B
.end method

.method public abstract init()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract stopFindICCard()V
.end method

.method public abstract stopFindIDCard()V
.end method

.method public abstract transceive([B)[B
.end method
