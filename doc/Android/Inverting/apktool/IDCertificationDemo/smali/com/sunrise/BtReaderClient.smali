.class public Lcom/sunrise/BtReaderClient;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/sunrise/reader/c;

.field private d:Lcom/sunrise/reader/ManagerInfo;

.field private e:Lcom/sunrise/icardreader/model/IdentityCardZ;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field public iClientCallback:Lcom/sunrise/IClientCallback;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/BtReaderClient;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sunrise/BtReaderClient;->g:Z

    iput-object v2, p0, Lcom/sunrise/BtReaderClient;->h:Ljava/lang/String;

    iput v1, p0, Lcom/sunrise/BtReaderClient;->j:I

    iput-boolean v1, p0, Lcom/sunrise/BtReaderClient;->k:Z

    iput-object v2, p0, Lcom/sunrise/BtReaderClient;->iClientCallback:Lcom/sunrise/IClientCallback;

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/reader/ManagerInfo;

    invoke-direct {v0}, Lcom/sunrise/reader/ManagerInfo;-><init>()V

    :cond_0
    const-string v1, "china_telecom"

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->accessAccount(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const-string v1, "12315aA..1"

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->accessPassword(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->authorise(Z)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const-string v1, "id.esaleb.com"

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const/16 v1, 0x17d4

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->port(I)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const-string v1, "FE870B0163113409C134283661490AEF"

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->key(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/BtReaderClient;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sunrise/BtReaderClient;->initReader(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sunrise/reader/ReaderManagerService;->iniManager(Landroid/content/Context;)Lcom/sunrise/reader/ReaderManagerService;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT SERVER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sunrise/BtReaderClient;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    new-instance v1, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v1}, Lcom/sunrise/reader/ReaderServerInfo;-><init>()V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->preferServer(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/ManagerInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/sunrise/BtReaderClient;)Lcom/sunrise/icardreader/model/IdentityCardZ;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sunrise/BtReaderClient;Lcom/sunrise/icardreader/model/IdentityCardZ;)Lcom/sunrise/icardreader/model/IdentityCardZ;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    return-object p1
.end method

.method private closedReader()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5173\u95ed\u9605\u8bfb\u5668"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v0}, Lcom/sunrise/reader/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/BtReaderClient;->g:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initReader(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/sunrise/reader/c;

    new-instance v2, Lcom/sunrise/BtReaderClient$1;

    invoke-direct {v2, p0}, Lcom/sunrise/BtReaderClient$1;-><init>(Lcom/sunrise/BtReaderClient;)V

    new-instance v3, Lcom/sunrise/BtReaderClient$2;

    invoke-direct {v3, p0}, Lcom/sunrise/BtReaderClient$2;-><init>(Lcom/sunrise/BtReaderClient;)V

    new-instance v4, Lcom/sunrise/BtReaderClient$3;

    invoke-direct {v4, p0}, Lcom/sunrise/BtReaderClient$3;-><init>(Lcom/sunrise/BtReaderClient;)V

    iget-object v5, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sunrise/reader/c;-><init>(Ljava/lang/String;Lcom/sunrise/reader/h;Lcom/sunrise/reader/j;Lcom/sunrise/reader/k;Lcom/sunrise/reader/ManagerInfo;)V

    iput-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    return-void
.end method

.method private readCard(J)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sunrise/reader/ManagerInfo;->setConnectMethod(I)Lcom/sunrise/reader/ManagerInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/BtReaderClient;->j:I

    new-instance v0, Lcom/sunrise/icardreader/model/IdentityCardZ;

    invoke-direct {v0}, Lcom/sunrise/icardreader/model/IdentityCardZ;-><init>()V

    iput-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/reader/c;->a(J)I

    move-result v2

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    iget-object v0, v0, Lcom/sunrise/reader/c;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    iget-object v0, v0, Lcom/sunrise/reader/c;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iput v2, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    const/4 v2, -0x6

    iput v2, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private readCardSync()Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3a98

    invoke-direct {p0, v0, v1}, Lcom/sunrise/BtReaderClient;->readCard(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget-object v1, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/sunrise/BtReaderClient;->i:I

    if-nez v1, :cond_1

    const/4 v1, -0x6

    iput v1, p0, Lcom/sunrise/BtReaderClient;->i:I

    :cond_1
    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v2, p0, Lcom/sunrise/BtReaderClient;->i:I

    iput v2, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    goto :goto_0
.end method

.method private registerBlueCard(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunrise/reader/c;->d:[B

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v2, p1}, Lcom/sunrise/reader/c;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sunrise/BtReaderClient;->g:Z

    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fde\u63a5\u9605\u8bfb\u5668\u7ed3\u679c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    iput-object p1, p0, Lcom/sunrise/BtReaderClient;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sunrise/BtReaderClient;->g:Z

    iget-object v3, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v3}, Lcom/sunrise/reader/c;->f()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sunrise/BtReaderClient;->k:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setTheServer(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/sunrise/BtReaderClient;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sunrise/BtReaderClient;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT SERVER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    new-instance v1, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v1}, Lcom/sunrise/reader/ReaderServerInfo;-><init>()V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    iget v2, p0, Lcom/sunrise/BtReaderClient;->b:I

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->port(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->setServer(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v1}, Lcom/sunrise/reader/ManagerInfo;->theSetServer()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private unRegisterBlueCard()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/BtReaderClient;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v0}, Lcom/sunrise/reader/c;->a()V

    return-void
.end method


# virtual methods
.method public cloudReadCert(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/ManagerInfo;->token(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p3}, Lcom/sunrise/reader/ManagerInfo;->redisServer(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p4}, Lcom/sunrise/reader/ManagerInfo;->crmSn(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Lcom/sunrise/icardreader/model/IdentityCardZ;

    invoke-direct {v0}, Lcom/sunrise/icardreader/model/IdentityCardZ;-><init>()V

    iput-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    const/16 v1, -0xa

    iput v1, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    move v1, v0

    :goto_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v5, v0, v2

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/sunrise/BtReaderClient;->setTheServer(Ljava/lang/String;I)V

    :try_start_0
    invoke-direct {p0}, Lcom/sunrise/BtReaderClient;->readCardSync()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    const/4 v0, -0x2

    :goto_2
    iput v0, v6, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const-string v0, "resultFlag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v7, v7, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorMsg"

    sget-object v6, Lcom/sunrise/reader/u;->a:Ljava/util/Map;

    iget-object v7, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v7, v7, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultContent"

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    iget-object v5, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    iget-object v6, p0, Lcom/sunrise/BtReaderClient;->a:Ljava/lang/String;

    iget v7, p0, Lcom/sunrise/BtReaderClient;->b:I

    invoke-static {v0, v5, v6, v7, v4}, Lcom/sunrise/reader/u;->a(ILcom/sunrise/reader/ManagerInfo;Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v1, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const/16 v5, -0x9

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v1, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const/4 v5, -0x3

    if-eq v1, v5, :cond_2

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "resultFlag"

    const-string v6, "99"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "errorMsg"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultContent"

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    iget-object v5, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    iget-object v6, p0, Lcom/sunrise/BtReaderClient;->a:Ljava/lang/String;

    iget v7, p0, Lcom/sunrise/BtReaderClient;->b:I

    invoke-static {v0, v5, v6, v7, v4}, Lcom/sunrise/reader/u;->a(ILcom/sunrise/reader/ManagerInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->e:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v1, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    iget-object v3, p0, Lcom/sunrise/BtReaderClient;->a:Ljava/lang/String;

    iget v5, p0, Lcom/sunrise/BtReaderClient;->b:I

    invoke-static {v1, v2, v3, v5, v4}, Lcom/sunrise/reader/u;->a(ILcom/sunrise/reader/ManagerInfo;Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_4
    move v1, v2

    goto/16 :goto_1
.end method

.method public connectBt(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sunrise/BtReaderClient;->registerBlueCard(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sunrise/BtReaderClient;->getReaderInfo()Ljava/util/Map;

    iget-object v1, p0, Lcom/sunrise/BtReaderClient;->iClientCallback:Lcom/sunrise/IClientCallback;

    invoke-interface {v1, v0}, Lcom/sunrise/IClientCallback;->onBtState(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public disconnectBt()Ljava/lang/Boolean;
    .locals 2

    invoke-direct {p0}, Lcom/sunrise/BtReaderClient;->unRegisterBlueCard()V

    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->iClientCallback:Lcom/sunrise/IClientCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sunrise/IClientCallback;->onBtState(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getReaderInfo()Ljava/util/Map;
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, "sn"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "factoryName"

    const-string v2, "SR"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "creatTime"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/sunrise/BtReaderClient;->k:Z

    if-nez v0, :cond_1

    const-string v0, "Sunrise"

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v2}, Lcom/sunrise/reader/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v3}, Lcom/sunrise/reader/c;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    :try_start_1
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    const/4 v7, 0x7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x7

    const/16 v7, 0x8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sn"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "factoryName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "creatTime"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sunrise/BtReaderClient;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v0}, Lcom/sunrise/reader/c;->h()Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/BtReaderClient;->d:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public readCert()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "resultFlag"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Lcom/sunrise/IClientCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/BtReaderClient;->iClientCallback:Lcom/sunrise/IClientCallback;

    return-void
.end method
