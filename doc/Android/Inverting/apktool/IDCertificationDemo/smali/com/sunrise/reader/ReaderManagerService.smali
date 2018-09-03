.class public Lcom/sunrise/reader/ReaderManagerService;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_CHECK_SERVER_SPAN:J = 0xea60L

.field public static final MAX_UPDATE_LIST_SPAN:J = 0x5265c00L

.field public static final SHAREDPREFERENCE_NAME:Ljava/lang/String; = "READERMANAGER_SERVER_LIST"

.field private static b:Ljava/lang/String;

.field private static c:Lcom/sunrise/reader/ReaderManagerService;

.field private static f:Landroid/content/Context;


# instance fields
.field protected a:Z

.field private d:Ljava/util/List;

.field private e:Lcom/sunrise/reader/ManagerInfo;

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Ljava/util/Comparator;

.field private n:Lcom/sunrise/reader/s;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ReaderManager"

    sput-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sunrise/reader/ManagerInfo;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunrise/reader/ReaderManagerService;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/sunrise/reader/ReaderManagerService;->i:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sunrise/reader/ReaderManagerService;->j:J

    iput-wide v4, p0, Lcom/sunrise/reader/ReaderManagerService;->k:J

    iput-wide v4, p0, Lcom/sunrise/reader/ReaderManagerService;->l:J

    iput-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->m:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;

    new-instance v0, Lcom/sunrise/reader/ReaderManagerService$1;

    invoke-direct {v0, p0}, Lcom/sunrise/reader/ReaderManagerService$1;-><init>(Lcom/sunrise/reader/ReaderManagerService;)V

    iput-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->o:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    new-instance v0, Lcom/sunrise/reader/ReaderManagerService$2;

    invoke-direct {v0, p0}, Lcom/sunrise/reader/ReaderManagerService$2;-><init>(Lcom/sunrise/reader/ReaderManagerService;)V

    iput-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->m:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/sunrise/reader/ReaderManagerService;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sunrise/reader/ReaderManagerService;->isNetWorkEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sunrise/reader/ReaderManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunrise/reader/ReaderManagerService;->k:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sunrise/reader/ReaderManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sunrise/reader/ReaderManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sunrise/reader/ReaderManagerService;->k:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sunrise/reader/ReaderManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunrise/reader/ReaderManagerService;->saveToCache()V

    return-void
.end method

.method static synthetic access$202(Lcom/sunrise/reader/ReaderManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sunrise/reader/ReaderManagerService;->l:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/sunrise/reader/ReaderManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sunrise/reader/ReaderManagerService;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sunrise/reader/ReaderManagerService;Lcom/sunrise/u/a;Ljava/lang/String;I)Lcom/sunrise/u/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lcom/sunrise/r/a;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/reader/ReaderManagerService;->send(Lcom/sunrise/u/a;Ljava/lang/String;I)Lcom/sunrise/u/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sunrise/reader/ReaderManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/ReaderManagerService;->g:Z

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sunrise/reader/ReaderManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunrise/reader/ReaderManagerService;->i:J

    return-wide v0
.end method

.method public static getManager()Lcom/sunrise/reader/ReaderManagerService;
    .locals 1

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->setDefualt(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    return-object v0
.end method

.method public static iniManager(Landroid/content/Context;)Lcom/sunrise/reader/ReaderManagerService;
    .locals 1

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sunrise/reader/ReaderManagerService;->setDefualt(Landroid/content/Context;)V

    :goto_0
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    sput-object p0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    invoke-direct {v0}, Lcom/sunrise/reader/ReaderManagerService;->registerReceiver()V

    goto :goto_0
.end method

.method private initReaderServers()V
    .locals 3

    invoke-direct {p0}, Lcom/sunrise/reader/ReaderManagerService;->loadFromCache()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isNetWorkEnable(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private loadFromCache()Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    const-string v3, "READERMANAGER_SERVER_LIST"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SERVER"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/sunrise/a/a;->c(Ljava/lang/String;)Lcom/sunrise/a/b;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {v4}, Lcom/sunrise/a/b;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v4, v0}, Lcom/sunrise/a/b;->a(I)Lcom/sunrise/a/e;

    move-result-object v2

    const-string v5, "priority"

    invoke-virtual {v2, v5}, Lcom/sunrise/a/e;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v6}, Lcom/sunrise/reader/ReaderServerInfo;-><init>()V

    const-string v7, "host"

    invoke-virtual {v2, v7}, Lcom/sunrise/a/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sunrise/reader/ReaderServerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v6

    const-string v7, "port"

    invoke-virtual {v2, v7}, Lcom/sunrise/a/e;->f(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sunrise/reader/ReaderServerInfo;->port(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v6

    const-string v7, "mport"

    invoke-virtual {v2, v7}, Lcom/sunrise/a/e;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sunrise/reader/ReaderServerInfo;->mport(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v6

    if-nez v5, :cond_2

    move v2, v1

    :goto_2
    invoke-virtual {v6, v2}, Lcom/sunrise/reader/ReaderServerInfo;->priority(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v1, "\u6210\u529f\u52a0\u8f7d\u672c\u5730\u6570\u636e"

    invoke-static {v0, v1}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u6210\u529f\u52a0\u8f7d\u672c\u5730\u6570\u636e"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveToCache()V
    .locals 8

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    const-string v2, "READERMANAGER_SERVER_LIST"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Lcom/sunrise/a/b;

    invoke-direct {v3}, Lcom/sunrise/a/b;-><init>()V

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    new-instance v5, Lcom/sunrise/a/e;

    invoke-direct {v5}, Lcom/sunrise/a/e;-><init>()V

    const-string v6, "host"

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "port"

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mport"

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->mport()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "priority"

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcom/sunrise/a/b;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SERVER"

    invoke-virtual {v3}, Lcom/sunrise/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private send(Lcom/sunrise/u/a;Ljava/lang/String;I)Lcom/sunrise/u/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lcom/sunrise/r/a;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {v0, v3, v3}, Lcom/sunrise/r/d;->a(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)Lcom/sunrise/r/d;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/sunrise/r/d;->b(Lcom/sunrise/u/a;)V

    invoke-virtual {v1}, Lcom/sunrise/r/d;->b()Lcom/sunrise/u/a;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v3

    if-ne v2, v3, :cond_0

    new-instance v0, Lcom/sunrise/r/a;

    invoke-direct {v0}, Lcom/sunrise/r/a;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v4}, Lcom/sunrise/r/d;->a(Z)V

    throw v0

    :cond_0
    invoke-virtual {v1, v4}, Lcom/sunrise/r/d;->a(Z)V

    return-object v0
.end method

.method private static setDefualt(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x1770

    new-instance v0, Lcom/sunrise/reader/ReaderManagerService;

    new-instance v1, Lcom/sunrise/reader/ManagerInfo;

    invoke-direct {v1}, Lcom/sunrise/reader/ManagerInfo;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sunrise/reader/ReaderManagerService;-><init>(Landroid/content/Context;Lcom/sunrise/reader/ManagerInfo;)V

    sput-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const-string v1, "id.esaleb.com"

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const/16 v1, 0x17d4

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->port(I)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->authorise(Z)Lcom/sunrise/reader/ManagerInfo;

    new-instance v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v0}, Lcom/sunrise/reader/ReaderServerInfo;-><init>()V

    const-string v1, "\u5e7f\u4fe1"

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ReaderServerInfo;->name(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    const-string v1, "59.41.39.51"

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ReaderServerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sunrise/reader/ReaderServerInfo;->port(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    new-instance v1, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v1}, Lcom/sunrise/reader/ReaderServerInfo;-><init>()V

    const-string v2, "\u5e7f\u4fe1"

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->name(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    const-string v2, "218.107.16.147"

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/reader/ReaderServerInfo;->port(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    sget-object v2, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->preferServer(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/ManagerInfo;

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->preferServer(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/ManagerInfo;

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    invoke-direct {v0}, Lcom/sunrise/reader/ReaderManagerService;->registerReceiver()V

    const-string v0, ""

    invoke-static {v0}, Lcom/sunrise/reader/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static stopServer()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->c:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public IsBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/ReaderManagerService;->a:Z

    return v0
.end method

.method public declared-synchronized checkNetwork(Ljava/util/List;)V
    .locals 9

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sunrise/reader/ReaderServerInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunrise/reader/ReaderServerInfo;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Lcom/sunrise/reader/t;

    const/4 v1, 0x0

    array-length v6, v0

    invoke-direct {v3, p0, v1, v6}, Lcom/sunrise/reader/t;-><init>(Lcom/sunrise/reader/ReaderManagerService;II)V

    if-eqz v0, :cond_3

    array-length v6, v0

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_3

    aget-object v7, v0, v1

    new-instance v8, Lcom/sunrise/reader/ReaderManagerService$3;

    invoke-direct {v8, p0, v7, v3}, Lcom/sunrise/reader/ReaderManagerService$3;-><init>(Lcom/sunrise/reader/ReaderManagerService;Lcom/sunrise/reader/ReaderServerInfo;Lcom/sunrise/reader/t;)V

    invoke-virtual {v8}, Lcom/sunrise/reader/ReaderManagerService$3;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_6
    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    invoke-virtual {v3}, Lcom/sunrise/reader/t;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_0
    move-exception v1

    :try_start_9
    sget-object v3, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v3, v6, v1}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_3
    monitor-enter p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->m:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_5

    :try_start_b
    array-length v3, v0

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    sget-object v6, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u68c0\u6d4b\u7ed3\u679c\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u68c0\u6d4b\u7ed3\u679c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0

    :cond_5
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u68c0\u6d4b\u5b8c\u6bd5,\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u670d\u52a1\u5668,\u8017\u65f6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6beb\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0
.end method

.method public declared-synchronized checkPreferServerNetwork()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sunrise/reader/ReaderManagerService$4;

    invoke-direct {v0, p0}, Lcom/sunrise/reader/ReaderManagerService$4;-><init>(Lcom/sunrise/reader/ReaderManagerService;)V

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService$4;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkServerNetWork(Lcom/sunrise/reader/ReaderServerInfo;I)I
    .locals 12

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    const/4 p2, 0x3

    :cond_0
    :try_start_0
    new-instance v1, Lcom/sunrise/u/b;

    invoke-direct {v1}, Lcom/sunrise/u/b;-><init>()V

    const-string v3, "SEND_TIME"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v1

    const-string v3, "TXT"

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v4

    const/4 v1, 0x6

    invoke-virtual {v4, v1}, Lcom/sunrise/u/b;->a(B)Lcom/sunrise/u/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    :goto_0
    if-ge v0, p2, :cond_4

    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v5, 0x200

    invoke-virtual {v1, v5}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    const/16 v5, 0x200

    invoke-virtual {v1, v5}, Ljava/net/Socket;->setSendBufferSize(I)V

    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    const/16 v5, 0x12

    invoke-virtual {v1, v5}, Ljava/net/Socket;->setTrafficClass(I)V

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sunrise/reader/ReaderServerInfo;->mport()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x1388

    invoke-virtual {v1, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/sunrise/r/d;->a(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)Lcom/sunrise/r/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4}, Lcom/sunrise/r/d;->b(Lcom/sunrise/u/a;)V

    invoke-virtual {v1}, Lcom/sunrise/r/d;->b()Lcom/sunrise/u/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    int-to-long v10, v3

    sub-long v6, v8, v6

    add-long/2addr v6, v10

    long-to-int v3, v6

    add-int/lit8 v5, p2, -0x1

    if-ge v0, v5, :cond_1

    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v5}, Lcom/sunrise/r/d;->a(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sunrise/r/d;->a(Z)V

    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, -0x1

    :goto_2
    return v0

    :cond_4
    :try_start_4
    div-int v0, v3, p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public clearLocalService()V
    .locals 3

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    const-string v1, "READERMANAGER_SERVER_LIST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SERVER"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public fastServer()Lcom/sunrise/reader/ReaderServerInfo;
    .locals 5

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    :cond_0
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7531\u4e8e\u6ca1\u6709\u53ef\u7528\u7684\u540e\u53f0\u670d\u52a1\uff0c\u6216\u8005\u540e\u53f0\u670d\u52a1\u5ef6\u8fdf\u8d85\u8fc7200\u6beb\u79d2\uff0c\u4f7f\u7528\u9ed8\u8ba4\u7684\u670d\u52a1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v3}, Lcom/sunrise/reader/ManagerInfo;->preferServer()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServer()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528\u670d\u52a1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fastServerUicom()Lcom/sunrise/reader/ReaderServerInfo;
    .locals 7

    const/4 v1, 0x0

    const v6, 0x7fffffff

    const-wide/16 v4, 0x0

    const/16 v3, 0xc8

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServer()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sunrise/reader/ReaderManagerService;->checkPreferServerNetwork()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    if-ne v2, v6, :cond_6

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    if-ne v2, v6, :cond_7

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v2, "\u4ece\u670d\u52a1\u5668\u5217\u8868\u4e2d\u83b7\u53d6,\u670d\u52a1\u5668\u8fde\u63a5\u8d85\u65f6"

    invoke-static {v0, v2}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4ece\u670d\u52a1\u5668\u5217\u8868\u4e2d\u83b7\u53d6,\u670d\u52a1\u5668\u8fde\u63a5\u8d85\u65f6"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iput-wide v4, p0, Lcom/sunrise/reader/ReaderManagerService;->k:J

    iput-wide v4, p0, Lcom/sunrise/reader/ReaderManagerService;->l:J

    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v1}, Lcom/sunrise/reader/ManagerInfo;->preferServer()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v1, "\u4ece\u9ed8\u8ba4\u914d\u7f6e\u4e2d\u83b7\u53d6"

    invoke-static {v0, v1}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4ece\u9ed8\u8ba4\u914d\u7f6e\u4e2d\u83b7\u53d6"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServer()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v0

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/reader/ReaderManagerService;->checkPreferServerNetwork()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v1

    if-le v1, v3, :cond_8

    iput-wide v4, p0, Lcom/sunrise/reader/ReaderManagerService;->l:J

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    sget-object v1, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v2, "\u4ece\u670d\u52a1\u5668\u5217\u8868\u4e2d\u83b7\u53d6"

    invoke-static {v1, v2}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u4ece\u670d\u52a1\u5668\u5217\u8868\u4e2d\u83b7\u53d6"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public getManagerInfo()Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    return-object v0
.end method

.method public getServerIndex()I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    const-string v1, "READERMANAGER_SERVER_LIST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SERVER_INDEX"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    return v2
.end method

.method public declared-synchronized getService()I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sunrise/reader/ReaderManagerService;->getService(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getService(Z)I
    .locals 9

    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Lcom/sunrise/u/b;

    invoke-direct {v5}, Lcom/sunrise/u/b;-><init>()V

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->deviceSn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v6, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->deviceSn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "FFFFFFFFFF"

    :goto_1
    const-string v6, "ACCESS_ACCOUNT"

    iget-object v7, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v7}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v6

    const-string v7, "ACCESS_PASSWORD"

    iget-object v8, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v8}, Lcom/sunrise/reader/ManagerInfo;->accessPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v6

    const-string v7, "DEVICE_SN"

    invoke-virtual {v6, v7, v0}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v6, "DEVICE_CONNECT_METHOD"

    iget-object v7, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v7}, Lcom/sunrise/reader/ManagerInfo;->connectMethod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v6, "BUSINESS_DATA"

    iget-object v7, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v7}, Lcom/sunrise/reader/ManagerInfo;->datas()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v6, "TERMINAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v6

    const-string v7, "TERMINAL_VERSION"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v6, v7, v0}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v6, "DRIVER_VERSION"

    iget-object v7, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v7}, Lcom/sunrise/reader/ManagerInfo;->driverVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v6, "APP_ID"

    iget-object v7, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v7}, Lcom/sunrise/reader/ManagerInfo;->appid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/sunrise/u/b;->a(B)Lcom/sunrise/u/a;

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6b63\u5728\u8fde\u63a5\u540e\u53f0\u670d\u52a1\u5668 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v7}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v7}, Lcom/sunrise/reader/ManagerInfo;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6b63\u5728\u8fde\u63a5\u540e\u53f0\u670d\u52a1\u5668 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->port()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->port()I

    move-result v6

    invoke-direct {p0, v5, v0, v6}, Lcom/sunrise/reader/ReaderManagerService;->send(Lcom/sunrise/u/a;Ljava/lang/String;I)Lcom/sunrise/u/a;

    move-result-object v0

    instance-of v5, v0, Lcom/sunrise/u/b;

    if-eqz v5, :cond_9

    check-cast v0, Lcom/sunrise/u/b;

    invoke-virtual {v0}, Lcom/sunrise/u/b;->g()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v3, "\u8ba4\u8bc1\u5931\u8d25 "

    invoke-static {v0, v3}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->deviceSn()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const-string v5, "SERVICES"

    invoke-virtual {v0, v5}, Lcom/sunrise/u/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/a/b;

    move v5, v3

    :goto_3
    invoke-virtual {v0}, Lcom/sunrise/a/b;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v0, v5}, Lcom/sunrise/a/b;->a(I)Lcom/sunrise/a/e;

    move-result-object v6

    new-instance v7, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v7}, Lcom/sunrise/reader/ReaderServerInfo;-><init>()V

    const-string v8, "IP"

    invoke-virtual {v6, v8}, Lcom/sunrise/a/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sunrise/reader/ReaderServerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v7

    const-string v8, "PORT"

    invoke-virtual {v6, v8}, Lcom/sunrise/a/e;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sunrise/reader/ReaderServerInfo;->port(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v7

    const-string v8, "MANAGE_PORT"

    invoke-virtual {v6, v8}, Lcom/sunrise/a/e;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/sunrise/reader/ReaderServerInfo;->mport(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0, v4}, Lcom/sunrise/reader/ReaderManagerService;->checkNetwork(Ljava/util/List;)V

    :cond_6
    iget-object v5, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    monitor-enter v5
    :try_end_2
    .catch Lcom/sunrise/r/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v0

    :goto_4
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u83b7\u53d6\u5217\u8868\u6210\u529f :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u5217\u8868\u6210\u529f :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_4
    .catch Lcom/sunrise/r/a; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x3

    goto/16 :goto_0

    :cond_7
    move-object v0, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Lcom/sunrise/r/a; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    :try_start_7
    sget-object v1, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v3, "\u8ba4\u8bc1\u5931\u8d25 "

    invoke-static {v1, v3}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u8ba4\u8bc1\u5931\u8d25"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto/16 :goto_0

    :cond_9
    :try_start_8
    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v3, "\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e "

    invoke-static {v0, v3}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/sunrise/r/a; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_9
    sget-object v2, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v3, "\u8fde\u63a5\u7ba1\u63a7\u7cfb\u7edf\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\u8fde\u63a5\u7ba1\u63a7\u7cfb\u7edf\u5931\u8d25"

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    sget-object v2, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public intManagerAccess(Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/reader/ReaderManagerService;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/ManagerInfo;->accessAccount(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sunrise/reader/ManagerInfo;->accessPassword(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    return-object p0
.end method

.method public intManagerHost(Ljava/lang/String;I)Lcom/sunrise/reader/ReaderManagerService;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/ManagerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sunrise/reader/ManagerInfo;->port(I)Lcom/sunrise/reader/ManagerInfo;

    return-object p0
.end method

.method public quit()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sunrise/reader/ReaderManagerService;->g:Z

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;

    invoke-virtual {v0}, Lcom/sunrise/reader/s;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    const-string v1, "Receiver not registered"

    invoke-static {v0, v1}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public saveServerIndex(I)V
    .locals 3

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    const-string v1, "READERMANAGER_SERVER_LIST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SERVER_INDEX"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public serverError(Lcom/sunrise/reader/ReaderServerInfo;I)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServer()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    monitor-enter v1

    if-nez p2, :cond_2

    const v0, 0x7fffffff

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority(I)Lcom/sunrise/reader/ReaderServerInfo;

    :cond_2
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService;->m:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public servers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    return-object v0
.end method

.method public setCheckServiceSpan(J)Lcom/sunrise/reader/ReaderManagerService;
    .locals 3

    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput-wide p1, p0, Lcom/sunrise/reader/ReaderManagerService;->j:J

    goto :goto_0
.end method

.method public setIsBusy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunrise/reader/ReaderManagerService;->a:Z

    return-void
.end method

.method public setManagerInfo(Lcom/sunrise/reader/ManagerInfo;)Lcom/sunrise/reader/ReaderManagerService;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    return-object p0
.end method

.method public setServers(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderManagerService;->d:Ljava/util/List;

    return-void
.end method

.method public setUpdateListSpan(J)Lcom/sunrise/reader/ReaderManagerService;
    .locals 3

    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput-wide p1, p0, Lcom/sunrise/reader/ReaderManagerService;->i:J

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "\u521d\u59cb\u5316\u670d\u52a1\u5217\u8868"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sunrise/reader/ReaderManagerService;->initReaderServers()V

    iget-boolean v0, p0, Lcom/sunrise/reader/ReaderManagerService;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "\u542f\u52a8\u7ba1\u63a7\u7ebf\u7a0b"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/reader/ReaderManagerService;->g:Z

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/reader/s;

    invoke-direct {v0, p0}, Lcom/sunrise/reader/s;-><init>(Lcom/sunrise/reader/ReaderManagerService;)V

    iput-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->n:Lcom/sunrise/reader/s;

    invoke-virtual {v0}, Lcom/sunrise/reader/s;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unRegisterReceiver()V
    .locals 2

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public upload(Ljava/io/File;)I
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyy-MM-dd"

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    sget-object v5, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    if-eqz v5, :cond_2

    sget-object v0, Lcom/sunrise/reader/ReaderManagerService;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/sunrise/reader/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v6, Lcom/sunrise/u/b;

    invoke-direct {v6}, Lcom/sunrise/u/b;-><init>()V

    const-string v10, "ACCESS_ACCOUNT"

    iget-object v11, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v11}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v6

    const-string v10, "ACCESS_PASSWORD"

    iget-object v11, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v11}, Lcom/sunrise/reader/ManagerInfo;->accessPassword()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v6

    const-string v10, "FILE_NAME"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v6

    const-string v10, "FILE_SIZE"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v6

    const-string v10, "FILE_DATE"

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v10, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v4

    const-string v6, "TERMINAL_ID"

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v4, v6, v0}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v4, "TERMINAL_TYPE"

    const-string v6, "Android"

    invoke-virtual {v0, v4, v6}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const/16 v4, 0x32

    invoke-virtual {v0, v4}, Lcom/sunrise/u/b;->a(B)Lcom/sunrise/u/a;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/net/Socket;

    iget-object v4, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/sunrise/reader/ReaderManagerService;->e:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v10}, Lcom/sunrise/reader/ManagerInfo;->port()I

    move-result v10

    invoke-direct {v6, v4, v10}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v4, v5}, Lcom/sunrise/r/d;->b(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)Lcom/sunrise/r/d;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sunrise/r/d;->b(Lcom/sunrise/u/a;)V

    invoke-virtual {v8}, Lcom/sunrise/r/d;->b()Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\u8ba4\u8bc1\u6210\u529f\uff0c\u670d\u52a1\u7aef\u51c6\u5907\u63a5\u53d7\u6587\u4ef6\u4f20\u8f93"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v3, v1, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v3, v5

    move-object v2, v6

    move-object v4, v7

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v0, -0x3

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v0, -0x2

    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_5
    :goto_4
    if-eqz v3, :cond_0

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_6
    :try_start_c
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v8}, Lcom/sunrise/r/d;->b()Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "\u670d\u52a1\u7aef\u6587\u4ef6\u63a5\u6536\u6210\u529f"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v6, :cond_7

    :try_start_d
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_8
    :goto_6
    move v0, v2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_9
    :try_start_f
    const-string v0, "\u670d\u52a1\u7aef\u6587\u4ef6\u63a5\u6536\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v0, -0x5

    if-eqz v6, :cond_a

    :try_start_10
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    :cond_a
    :goto_7
    if-eqz v7, :cond_0

    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_b
    :try_start_12
    const-string v0, "\u8ba4\u8bc1\u5931\u8d25\uff0c\u670d\u52a1\u7aef\u4e0d\u5141\u8bb8\u8fdb\u884c\u6587\u4ef6\u4f20\u8f93"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/4 v0, -0x4

    if-eqz v6, :cond_c

    :try_start_13
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    :cond_c
    :goto_8
    if-eqz v3, :cond_0

    :try_start_14
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    :goto_9
    if-eqz v6, :cond_d

    :try_start_15
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    :cond_d
    :goto_a
    if-eqz v7, :cond_e

    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    :cond_e
    :goto_b
    throw v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v5, v3

    move-object v7, v3

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v7, v3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v7, v3

    move-object v3, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v5, v3

    move-object v6, v2

    move-object v7, v4

    move-object v3, v1

    goto :goto_9

    :catch_e
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_2

    :catch_f
    move-exception v0

    move-object v1, v3

    move-object v2, v6

    move-object v4, v3

    goto/16 :goto_2

    :catch_10
    move-exception v0

    move-object v1, v3

    move-object v2, v6

    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_2

    :catch_11
    move-exception v0

    move-object v1, v4

    move-object v2, v6

    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_2
.end method
