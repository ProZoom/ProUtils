.class Lcom/sunrise/reader/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/sunrise/reader/a;

.field private b:Landroid/bluetooth/BluetoothSocket;

.field private c:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/a;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "Reader-Connector"

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/b;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sunrise/reader/b;->setDaemon(Z)V

    iput-object p2, p0, Lcom/sunrise/reader/b;->c:Landroid/bluetooth/BluetoothDevice;

    :try_start_0
    invoke-static {}, Lcom/sunrise/reader/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DeviceDependency:shouldUseFixChannel"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDependency:shouldUseFixChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createInsecureRfcommSocket"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    iput-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDependency:shouldUseFixChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DeviceDependency:shouldUseFixChannel"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceDependency:SDK-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/sunrise/reader/c;->a:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "create() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sunrise/reader/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDependency:shouldUseSecure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DeviceDependency:shouldUseSecure"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/sunrise/reader/c;->a:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDependency:else"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DeviceDependency:else"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/sunrise/reader/c;->a:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/sunrise/reader/c;->a:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() of connect socket failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v0}, Lcom/sunrise/reader/a;->b(Lcom/sunrise/reader/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v0}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN mConnectThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BEGIN mConnectThread"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v0}, Lcom/sunrise/reader/a;->c(Lcom/sunrise/reader/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    iget-object v0, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    iget-object v1, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v0, v3}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;Lcom/sunrise/reader/b;)Lcom/sunrise/reader/b;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v0}, Lcom/sunrise/reader/a;->b(Lcom/sunrise/reader/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/b;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v0, v3}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;Lcom/sunrise/reader/b;)Lcom/sunrise/reader/b;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unable to close() socket during connection failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to close() socket during connection failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/reader/b;->a:Lcom/sunrise/reader/a;

    invoke-static {v1, v3}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/reader/a;Lcom/sunrise/reader/b;)Lcom/sunrise/reader/b;

    throw v0
.end method
