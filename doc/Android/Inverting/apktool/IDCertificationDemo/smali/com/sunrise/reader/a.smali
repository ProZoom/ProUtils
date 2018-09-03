.class public Lcom/sunrise/reader/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:I

.field private e:Landroid/bluetooth/BluetoothDevice;

.field private f:Lcom/sunrise/reader/b;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lcom/sunrise/r/d;

.field private k:Lcom/sunrise/reader/j;

.field private l:Lcom/sunrise/bluetooth/b;

.field private m:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BTReader"

    iput-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/a;->d:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/a;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/a;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/a;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/a;->l:Lcom/sunrise/bluetooth/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/a;->m:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunrise/reader/a;->k:Lcom/sunrise/reader/j;

    return-void
.end method

.method static synthetic a(Lcom/sunrise/reader/a;Lcom/sunrise/reader/b;)Lcom/sunrise/reader/b;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/a;->f:Lcom/sunrise/reader/b;

    return-object p1
.end method

.method static synthetic a(Lcom/sunrise/reader/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READER_STATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iput p1, p0, Lcom/sunrise/reader/a;->d:I

    iget-object v0, p0, Lcom/sunrise/reader/a;->k:Lcom/sunrise/reader/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/a;->k:Lcom/sunrise/reader/j;

    invoke-interface {v0, p1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 4

    iget-object v1, p0, Lcom/sunrise/reader/a;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v2}, Lcom/sunrise/r/d;->b(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)Lcom/sunrise/r/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    iget-object v0, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    invoke-virtual {v0}, Lcom/sunrise/r/d;->c()Ljava/io/DataInputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    invoke-virtual {v2}, Lcom/sunrise/r/d;->d()Ljava/io/DataOutputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sunrise/bluetooth/b;->a(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)Lcom/sunrise/bluetooth/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/a;->l:Lcom/sunrise/bluetooth/b;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sunrise/reader/a;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/a;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/sunrise/reader/a;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/sunrise/reader/a;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunrise/reader/a;->a(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic b(Lcom/sunrise/reader/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunrise/reader/a;->d()V

    return-void
.end method

.method static synthetic c(Lcom/sunrise/reader/a;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/a;->c:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u8fde\u63a5\u9605\u8bfb\u5668\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u8fde\u63a5\u9605\u8bfb\u5668\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/a;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sunrise/reader/a;->a(I)V

    new-instance v0, Lcom/sunrise/reader/b;

    iget-object v1, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p0, v1}, Lcom/sunrise/reader/b;-><init>(Lcom/sunrise/reader/a;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/sunrise/reader/a;->f:Lcom/sunrise/reader/b;

    iget-object v0, p0, Lcom/sunrise/reader/a;->f:Lcom/sunrise/reader/b;

    invoke-virtual {v0}, Lcom/sunrise/reader/b;->start()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v1, p0, Lcom/sunrise/reader/a;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sunrise/reader/a;->a(I)V

    iget-object v0, p0, Lcom/sunrise/reader/a;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/a;->d:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sunrise/reader/a;->d:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/reader/a;->b()I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/a;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/sunrise/reader/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    :cond_1
    iget-object v0, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u73b0\u53ef\u7528\u8bbe\u5907\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/reader/r;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sunrise/reader/ManagerInfo;->deviceSn(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u73b0\u53ef\u7528\u8bbe\u5907:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/reader/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sunrise/reader/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sunrise/reader/a;->c()V

    :try_start_0
    iget-object v5, p0, Lcom/sunrise/reader/a;->i:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    move v4, v0

    :goto_1
    :try_start_1
    iget v0, p0, Lcom/sunrise/reader/a;->d:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v3, v2

    :goto_2
    if-lez v4, :cond_4

    move v0, v2

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    add-int/lit8 v0, v4, -0x1

    iget-object v3, p0, Lcom/sunrise/reader/a;->i:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    move v4, v0

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    iget v0, p0, Lcom/sunrise/reader/a;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    const-string v1, "\u65e0\u53ef\u7528\u8bbe\u5907"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u65e0\u53ef\u7528\u8bbe\u5907"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :cond_7
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    const-string v1, "BTS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    invoke-virtual {v0, p1}, Lcom/sunrise/r/d;->b(Lcom/sunrise/u/a;)V

    iget-object v0, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    invoke-virtual {v0}, Lcom/sunrise/r/d;->b()Lcom/sunrise/u/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    const-string v2, "BTSE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trans Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method b()I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sunrise/reader/a;->f:Lcom/sunrise/reader/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/a;->f:Lcom/sunrise/reader/b;

    invoke-virtual {v0}, Lcom/sunrise/reader/b;->a()V

    iput-object v2, p0, Lcom/sunrise/reader/a;->f:Lcom/sunrise/reader/b;

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    invoke-virtual {v0, v1}, Lcom/sunrise/r/d;->a(Z)V

    iput-object v2, p0, Lcom/sunrise/reader/a;->j:Lcom/sunrise/r/d;

    :cond_1
    iget-object v0, p0, Lcom/sunrise/reader/a;->l:Lcom/sunrise/bluetooth/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/reader/a;->l:Lcom/sunrise/bluetooth/b;

    invoke-virtual {v0, v1}, Lcom/sunrise/bluetooth/b;->a(Z)V

    iput-object v2, p0, Lcom/sunrise/reader/a;->l:Lcom/sunrise/bluetooth/b;

    :cond_2
    invoke-direct {p0, v1}, Lcom/sunrise/reader/a;->a(I)V

    return v1
.end method

.method public declared-synchronized send_cmd_to_reader([B)[B
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    const-string v1, "NBTS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sunrise/bluetooth/a;

    invoke-direct {v0}, Lcom/sunrise/bluetooth/a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sunrise/bluetooth/a;->b([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sunrise/reader/a;->l:Lcom/sunrise/bluetooth/b;

    invoke-virtual {v1, v0}, Lcom/sunrise/bluetooth/b;->a(Lcom/sunrise/bluetooth/a;)V

    iget-object v0, p0, Lcom/sunrise/reader/a;->l:Lcom/sunrise/bluetooth/b;

    invoke-virtual {v0}, Lcom/sunrise/bluetooth/b;->a()Lcom/sunrise/bluetooth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    const-string v2, "NBTSE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent to reader fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v3, v4, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :goto_1
    const-string v0, "\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sunrise/reader/a;->b:Ljava/lang/String;

    const-string v1, "REUTN NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "REUTN NULL"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/sunrise/bluetooth/a;->b()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_2
.end method
