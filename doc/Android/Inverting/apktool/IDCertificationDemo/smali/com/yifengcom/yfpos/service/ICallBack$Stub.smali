.class public abstract Lcom/yifengcom/yfpos/service/ICallBack$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/yifengcom/yfpos/service/ICallBack;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yifengcom.yfpos.service.ICallBack"

.field static final TRANSACTION_onCalculateMacSuccess:I = 0x5

.field static final TRANSACTION_onClosePinPad:I = 0xd

.field static final TRANSACTION_onDetectIc:I = 0x9

.field static final TRANSACTION_onDownloadProgress:I = 0x11

.field static final TRANSACTION_onEMVTestOK:I = 0x13

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onGetDateTimeSuccess:I = 0x7

.field static final TRANSACTION_onGetDeviceInfo:I = 0x2

.field static final TRANSACTION_onGetDeviceInfoSuccess:I = 0x12

.field static final TRANSACTION_onGetPsamAndSt720Info:I = 0xe

.field static final TRANSACTION_onIDCardResultData:I = 0x10

.field static final TRANSACTION_onInputPin:I = 0xa

.field static final TRANSACTION_onReadPsamNo:I = 0xf

.field static final TRANSACTION_onReadSuccess:I = 0x6

.field static final TRANSACTION_onResultSuccess:I = 0x4

.field static final TRANSACTION_onShowPinPad:I = 0xc

.field static final TRANSACTION_onSwiperSuccess:I = 0x8

.field static final TRANSACTION_onTimeout:I = 0x3

.field static final TRANSACTION_onTradeCancel:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p0, p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/ICallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yifengcom/yfpos/service/ICallBack;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/yifengcom/yfpos/service/ICallBack;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yifengcom/yfpos/service/ICallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onError(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v7

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onGetDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onTimeout()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onResultSuccess(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onCalculateMacSuccess([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :sswitch_6
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onReadSuccess([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onGetDateTimeSuccess(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/yifengcom/yfpos/service/CardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yifengcom/yfpos/service/CardModel;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onSwiperSuccess(Lcom/yifengcom/yfpos/service/CardModel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v7}, Lcom/yifengcom/yfpos/service/CardModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onDetectIc()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onInputPin()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onTradeCancel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onShowPinPad([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onClosePinPad()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onGetPsamAndSt720Info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onReadPsamNo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onIDCardResultData([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onDownloadProgress(JJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/yifengcom/yfpos/service/DeviceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yifengcom/yfpos/service/DeviceModel;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onGetDeviceInfoSuccess(Lcom/yifengcom/yfpos/service/DeviceModel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.yifengcom.yfpos.service.ICallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yifengcom/yfpos/service/ICallBack$Stub;->onEMVTestOK([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
