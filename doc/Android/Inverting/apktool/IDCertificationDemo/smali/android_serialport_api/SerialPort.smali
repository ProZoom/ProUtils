.class public Landroid_serialport_api/SerialPort;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/FileDescriptor;

.field private b:Ljava/io/FileInputStream;

.field private c:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "serial_port"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "/system/bin/su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 666 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid_serialport_api/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid_serialport_api/SerialPort;->a:Ljava/io/FileDescriptor;

    iget-object v0, p0, Landroid_serialport_api/SerialPort;->a:Ljava/io/FileDescriptor;

    if-nez v0, :cond_3

    const-string v0, "SerialPort"

    const-string v1, "native open returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid_serialport_api/SerialPort;->a:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid_serialport_api/SerialPort;->b:Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid_serialport_api/SerialPort;->a:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid_serialport_api/SerialPort;->c:Ljava/io/FileOutputStream;

    return-void
.end method

.method private static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public native close()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Landroid_serialport_api/SerialPort;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Landroid_serialport_api/SerialPort;->c:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public sendCmd([B)[B
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Landroid_serialport_api/SerialPort;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v1, 0x40

    new-array v5, v1, [B

    iget-object v1, p0, Landroid_serialport_api/SerialPort;->b:Ljava/io/FileInputStream;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v2, v3

    :goto_1
    const/4 v1, -0x1

    iget-object v4, p0, Landroid_serialport_api/SerialPort;->b:Ljava/io/FileInputStream;

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v2

    const/4 v2, 0x4

    if-lt v4, v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v7, 0x3

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v1, v1, 0x5

    if-ne v4, v1, :cond_4

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
