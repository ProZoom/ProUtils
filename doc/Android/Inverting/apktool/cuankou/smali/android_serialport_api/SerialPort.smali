.class public Landroid_serialport_api/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "serial_port"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 5
    .param p1, "device"    # Ljava/io/File;
    .param p2, "baudrate"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    .line 47
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 48
    .local v2, "su":Ljava/lang/Process;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 666 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 49
    const-string v4, "exit\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 51
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    .line 53
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3}, Ljava/lang/SecurityException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "su":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3}, Ljava/lang/SecurityException;-><init>()V

    throw v3

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, p3}, Landroid_serialport_api/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Landroid_serialport_api/SerialPort;->mFd:Ljava/io/FileDescriptor;

    .line 62
    iget-object v3, p0, Landroid_serialport_api/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-nez v3, :cond_3

    .line 63
    const-string v3, "SerialPort"

    const-string v4, "native open returns null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 66
    :cond_3
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Landroid_serialport_api/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Landroid_serialport_api/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 67
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid_serialport_api/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Landroid_serialport_api/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 68
    return-void
.end method

.method private static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public native close()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid_serialport_api/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid_serialport_api/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method
