.class public abstract Lcom/yifengcom/yfpos/service/IService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/yifengcom/yfpos/service/IService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yifengcom.yfpos.service.IService"

.field static final TRANSACTION_EMVTest:I = 0x23

.field static final TRANSACTION_calculateMac:I = 0x6

.field static final TRANSACTION_cancel:I = 0xc

.field static final TRANSACTION_clearKey:I = 0x15

.field static final TRANSACTION_clearSecurity:I = 0x14

.field static final TRANSACTION_closeADB:I = 0x13

.field static final TRANSACTION_closeRFID:I = 0x19

.field static final TRANSACTION_getDateTime:I = 0xe

.field static final TRANSACTION_getPsamAndSt720Info:I = 0x10

.field static final TRANSACTION_getPsamInfo:I = 0xf

.field static final TRANSACTION_onGetDeviceInfo:I = 0x3

.field static final TRANSACTION_onPrint:I = 0x5

.field static final TRANSACTION_openADB:I = 0x12

.field static final TRANSACTION_openICFind:I = 0x1a

.field static final TRANSACTION_openRFID:I = 0x17

.field static final TRANSACTION_powerDownIC:I = 0x1c

.field static final TRANSACTION_psamApduEx:I = 0x25

.field static final TRANSACTION_psamResetEx:I = 0x24

.field static final TRANSACTION_readMoney:I = 0xa

.field static final TRANSACTION_readPSAM:I = 0x1e

.field static final TRANSACTION_readRFCard:I = 0x9

.field static final TRANSACTION_registerICallback:I = 0x1

.field static final TRANSACTION_requestSN:I = 0x21

.field static final TRANSACTION_resetPSAM:I = 0x1d

.field static final TRANSACTION_rfidApduEx:I = 0x27

.field static final TRANSACTION_rfidCloseEx:I = 0x28

.field static final TRANSACTION_rfidOpenEx:I = 0x26

.field static final TRANSACTION_sendICCmd:I = 0x1b

.field static final TRANSACTION_sendIDCardData:I = 0x11

.field static final TRANSACTION_sendRFIDCmd:I = 0x18

.field static final TRANSACTION_setDateTime:I = 0xd

.field static final TRANSACTION_setDeviceData:I = 0x4

.field static final TRANSACTION_startSwiper:I = 0xb

.field static final TRANSACTION_testDestroy:I = 0x20

.field static final TRANSACTION_unregisterICallback:I = 0x2

.field static final TRANSACTION_updateFirmware:I = 0x16

.field static final TRANSACTION_writeMainKey:I = 0x7

.field static final TRANSACTION_writePSAM:I = 0x1f

.field static final TRANSACTION_writeSN:I = 0x22

.field static final TRANSACTION_writeWorkKey:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p0, p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/IService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yifengcom/yfpos/service/IService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/yifengcom/yfpos/service/IService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yifengcom/yfpos/service/IService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yifengcom/yfpos/service/IService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->registerICallback(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_2
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->unregisterICallback(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_3
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->onGetDeviceInfo(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_4
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yifengcom/yfpos/service/IService$Stub;->setDeviceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_5
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->onPrint([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->calculateMac([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->writeMainKey([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yifengcom/yfpos/service/WorkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yifengcom/yfpos/service/WorkKey;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->writeWorkKey(Lcom/yifengcom/yfpos/service/WorkKey;Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_9
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->readRFCard(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->readMoney(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yifengcom/yfpos/service/IService$Stub;->startSwiper(IJIBLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yifengcom/yfpos/service/IService$Stub;->cancel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yifengcom/yfpos/service/IService$Stub;->setDateTime(JLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->getDateTime(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->getPsamInfo(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->getPsamAndSt720Info(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->sendIDCardData([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->openADB(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->closeADB(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->clearSecurity(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->clearKey(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->updateFirmware(Ljava/lang/String;Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->openRFID(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->sendRFIDCmd([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->closeRFID(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->openICFind(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->sendICCmd([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->powerDownIC(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->resetPSAM([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->readPSAM([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->writePSAM([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->testDestroy(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->requestSN(Lcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->writeSN([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->EMVTest([BLcom/yifengcom/yfpos/service/ICallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->psamResetEx(II)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yifengcom/yfpos/service/IService$Stub;->psamApduEx(I[BI)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/IService$Stub;->rfidOpenEx(I)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/IService$Stub;->rfidApduEx([BI)[B

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "com.yifengcom.yfpos.service.IService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yifengcom/yfpos/service/IService$Stub;->rfidCloseEx()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
