.class public abstract Lcom/bjw/ComAssistant/SerialHelper;
.super Ljava/lang/Object;
.source "SerialHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bjw/ComAssistant/SerialHelper$ReadThread;,
        Lcom/bjw/ComAssistant/SerialHelper$SendThread;
    }
.end annotation


# instance fields
.field private _bLoopData:[B

.field private _isOpen:Z

.field private iBaudRate:I

.field private iDelay:I

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mReadThread:Lcom/bjw/ComAssistant/SerialHelper$ReadThread;

.field private mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

.field private mSerialPort:Landroid_serialport_api/SerialPort;

.field private sPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "/dev/s3c2410_serial0"

    const/16 v1, 0x2580

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/SerialHelper;-><init>(Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sPort"    # Ljava/lang/String;

    .prologue
    .line 36
    const/16 v0, 0x2580

    invoke-direct {p0, p1, v0}, Lcom/bjw/ComAssistant/SerialHelper;-><init>(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "sPort"    # Ljava/lang/String;
    .param p2, "iBaudRate"    # I

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "/dev/s3c2410_serial0"

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->sPort:Ljava/lang/String;

    .line 23
    const/16 v0, 0x2580

    iput v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->iBaudRate:I

    .line 24
    iput-boolean v2, p0, Lcom/bjw/ComAssistant/SerialHelper;->_isOpen:Z

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_bLoopData:[B

    .line 26
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->iDelay:I

    .line 29
    iput-object p1, p0, Lcom/bjw/ComAssistant/SerialHelper;->sPort:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/bjw/ComAssistant/SerialHelper;->iBaudRate:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sPort"    # Ljava/lang/String;
    .param p2, "sBaudRate"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bjw/ComAssistant/SerialHelper;-><init>(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/bjw/ComAssistant/SerialHelper;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bjw/ComAssistant/SerialHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->sPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bjw/ComAssistant/SerialHelper;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->iDelay:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mReadThread:Lcom/bjw/ComAssistant/SerialHelper$ReadThread;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mReadThread:Lcom/bjw/ComAssistant/SerialHelper$ReadThread;

    invoke-virtual {v0}, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->interrupt()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSerialPort:Landroid_serialport_api/SerialPort;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSerialPort:Landroid_serialport_api/SerialPort;

    invoke-virtual {v0}, Landroid_serialport_api/SerialPort;->close()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSerialPort:Landroid_serialport_api/SerialPort;

    .line 61
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_isOpen:Z

    .line 62
    return-void
.end method

.method public getBaudRate()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->iBaudRate:I

    return v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->sPort:Ljava/lang/String;

    return-object v0
.end method

.method public getbLoopData()[B
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_bLoopData:[B

    return-object v0
.end method

.method public getiDelay()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->iDelay:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_isOpen:Z

    return v0
.end method

.method protected abstract onDataReceived(Lcom/bjw/bean/ComBean;)V
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 43
    new-instance v0, Landroid_serialport_api/SerialPort;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bjw/ComAssistant/SerialHelper;->sPort:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bjw/ComAssistant/SerialHelper;->iBaudRate:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid_serialport_api/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSerialPort:Landroid_serialport_api/SerialPort;

    .line 44
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSerialPort:Landroid_serialport_api/SerialPort;

    invoke-virtual {v0}, Landroid_serialport_api/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mOutputStream:Ljava/io/OutputStream;

    .line 45
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSerialPort:Landroid_serialport_api/SerialPort;

    invoke-virtual {v0}, Landroid_serialport_api/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mInputStream:Ljava/io/InputStream;

    .line 46
    new-instance v0, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;

    invoke-direct {v0, p0, v4}, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;-><init>(Lcom/bjw/ComAssistant/SerialHelper;Lcom/bjw/ComAssistant/SerialHelper$ReadThread;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mReadThread:Lcom/bjw/ComAssistant/SerialHelper$ReadThread;

    .line 47
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mReadThread:Lcom/bjw/ComAssistant/SerialHelper$ReadThread;

    invoke-virtual {v0}, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->start()V

    .line 48
    new-instance v0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    invoke-direct {v0, p0, v4}, Lcom/bjw/ComAssistant/SerialHelper$SendThread;-><init>(Lcom/bjw/ComAssistant/SerialHelper;Lcom/bjw/ComAssistant/SerialHelper$SendThread;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    .line 49
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    invoke-virtual {v0}, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->setSuspendFlag()V

    .line 50
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    invoke-virtual {v0}, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->start()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_isOpen:Z

    .line 52
    return-void
.end method

.method public send([B)V
    .locals 2
    .param p1, "bOutArray"    # [B

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/bjw/ComAssistant/SerialHelper;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendHex(Ljava/lang/String;)V
    .locals 1
    .param p1, "sHex"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/bjw/ComAssistant/MyFunc;->HexToByteArr(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    .local v0, "bOutArray":[B
    invoke-virtual {p0, v0}, Lcom/bjw/ComAssistant/SerialHelper;->send([B)V

    .line 77
    return-void
.end method

.method public sendTxt(Ljava/lang/String;)V
    .locals 1
    .param p1, "sTxt"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 81
    .local v0, "bOutArray":[B
    invoke-virtual {p0, v0}, Lcom/bjw/ComAssistant/SerialHelper;->send([B)V

    .line 82
    return-void
.end method

.method public setBaudRate(I)Z
    .locals 1
    .param p1, "iBaud"    # I

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_isOpen:Z

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    iput p1, p0, Lcom/bjw/ComAssistant/SerialHelper;->iBaudRate:I

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBaudRate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sBaud"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "iBaud":I
    invoke-virtual {p0, v0}, Lcom/bjw/ComAssistant/SerialHelper;->setBaudRate(I)Z

    move-result v1

    return v1
.end method

.method public setHexLoopData(Ljava/lang/String;)V
    .locals 1
    .param p1, "sHex"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p1}, Lcom/bjw/ComAssistant/MyFunc;->HexToByteArr(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_bLoopData:[B

    .line 214
    return-void
.end method

.method public setPort(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sPort"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_isOpen:Z

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/bjw/ComAssistant/SerialHelper;->sPort:Ljava/lang/String;

    .line 189
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTxtLoopData(Ljava/lang/String;)V
    .locals 1
    .param p1, "sTxt"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->_bLoopData:[B

    .line 210
    return-void
.end method

.method public setbLoopData([B)V
    .locals 0
    .param p1, "bLoopData"    # [B

    .prologue
    .line 205
    iput-object p1, p0, Lcom/bjw/ComAssistant/SerialHelper;->_bLoopData:[B

    .line 206
    return-void
.end method

.method public setiDelay(I)V
    .locals 0
    .param p1, "iDelay"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/bjw/ComAssistant/SerialHelper;->iDelay:I

    .line 224
    return-void
.end method

.method public startSend()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    invoke-virtual {v0}, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->setResume()V

    .line 232
    :cond_0
    return-void
.end method

.method public stopSend()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/bjw/ComAssistant/SerialHelper;->mSendThread:Lcom/bjw/ComAssistant/SerialHelper$SendThread;

    invoke-virtual {v0}, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->setSuspendFlag()V

    .line 240
    :cond_0
    return-void
.end method
