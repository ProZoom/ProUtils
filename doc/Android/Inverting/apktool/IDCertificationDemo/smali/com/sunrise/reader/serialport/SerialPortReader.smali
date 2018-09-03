.class public Lcom/sunrise/reader/serialport/SerialPortReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/reader/i;


# instance fields
.field private a:Lcom/sunrise/reader/j;

.field private b:Landroid_serialport_api/SerialPort;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/io/OutputStream;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "serialPortReader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    return-void
.end method

.method private setState(I)V
    .locals 1

    iput p1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->e:I

    iget-object v0, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->a:Lcom/sunrise/reader/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->a:Lcom/sunrise/reader/j;

    invoke-interface {v0, p1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public authId(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    iget-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sunrise/reader/serialport/SerialPortReader;->authId(Landroid_serialport_api/SerialPort;[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b([B)V

    const-string v2, "SerialPortReader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v4, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native authId(Landroid_serialport_api/SerialPort;[B)[B
.end method

.method public native cardPowerOff(Landroid_serialport_api/SerialPort;)[B
.end method

.method public cardPowerOn()Lcom/sunrise/u/a;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    iget-object v2, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    invoke-virtual {p0, v2}, Lcom/sunrise/reader/serialport/SerialPortReader;->cardPowerOn(Landroid_serialport_api/SerialPort;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    if-nez v3, :cond_0

    array-length v3, v2

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/sunrise/u/a;->b([B)V

    const-string v3, "SerialPortReader"

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v4, v5, v6}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public native cardPowerOn(Landroid_serialport_api/SerialPort;)[B
.end method

.method public close()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sunrise/reader/serialport/SerialPortReader;->setState(I)V

    return v0
.end method

.method public closeId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native getFailCode()I
.end method

.method public native getRegisterNo(Landroid/content/Context;)I
.end method

.method public getResultCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sunrise/reader/serialport/SerialPortReader;->getFailCode()I

    move-result v0

    return v0
.end method

.method public native nfcSend(Landroid/content/Context;Landroid/nfc/tech/NfcB;)[B
.end method

.method public open()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid_serialport_api/SerialPort;

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/ttyS1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v3, 0x1c200

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid_serialport_api/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    iget-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    invoke-virtual {v1}, Landroid_serialport_api/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->c:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    invoke-virtual {v1}, Landroid_serialport_api/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->d:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sunrise/reader/serialport/SerialPortReader;->setState(I)V

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openId()Lcom/sunrise/u/a;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    iget-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    invoke-virtual {p0, v1}, Lcom/sunrise/reader/serialport/SerialPortReader;->openId(Landroid_serialport_api/SerialPort;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b([B)V

    const-string v2, "SerialPortReader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v4, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native openId(Landroid_serialport_api/SerialPort;)[B
.end method

.method public readInfo(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    iget-object v1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sunrise/reader/serialport/SerialPortReader;->readInfo(Landroid_serialport_api/SerialPort;[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b([B)V

    const-string v2, "SerialPortReader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v4, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native readInfo(Landroid_serialport_api/SerialPort;[B)[B
.end method

.method public resetId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native setServer([BI)V
.end method

.method public setStateAdapter(Lcom/sunrise/reader/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->a:Lcom/sunrise/reader/j;

    return-void
.end method

.method public state()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->e:I

    return v0
.end method

.method public transCmd(I[B)Lcom/sunrise/u/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public transCmd(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public transmitAPDU(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/serialport/SerialPortReader;->b:Landroid_serialport_api/SerialPort;

    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sunrise/reader/serialport/SerialPortReader;->transmitAPDU(Landroid_serialport_api/SerialPort;[B)[B

    move-result-object v2

    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/sunrise/u/a;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public native transmitAPDU(Landroid_serialport_api/SerialPort;[B)[B
.end method
