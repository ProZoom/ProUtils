.class public Lcom/sunrise/OTGAndNFCClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/reader/h;
.implements Lcom/sunrise/reader/j;
.implements Lcom/sunrise/reader/k;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field private c:Lcom/sunrise/icardreader/model/IdentityCardZ;

.field private d:Lcom/sunrise/reader/n;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Lcom/sunrise/reader/ManagerInfo;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/sunrise/reader/ReadIDCardDriver;

.field private m:Lcom/sunrise/b;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sunrise/OTGAndNFCClient;->k:Z

    iput-boolean v1, p0, Lcom/sunrise/OTGAndNFCClient;->n:Z

    iput-object p1, p0, Lcom/sunrise/OTGAndNFCClient;->e:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->appid(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    invoke-direct {p0}, Lcom/sunrise/OTGAndNFCClient;->initReader()V

    return-void
.end method

.method private closedReader()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v0}, Lcom/sunrise/reader/n;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/OTGAndNFCClient;->h:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initReader()V
    .locals 6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "TPS580M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunrise/OTGAndNFCClient;->k:Z

    new-instance v0, Lcom/sunrise/reader/ReadIDCardDriver;

    iget-object v4, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    new-instance v5, Lcom/sunrise/reader/serialport/SerialPortReader;

    invoke-direct {v5}, Lcom/sunrise/reader/serialport/SerialPortReader;-><init>()V

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sunrise/reader/ReadIDCardDriver;-><init>(Lcom/sunrise/reader/h;Lcom/sunrise/reader/j;Lcom/sunrise/reader/k;Lcom/sunrise/reader/ManagerInfo;Lcom/sunrise/reader/i;)V

    iput-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->l:Lcom/sunrise/reader/ReadIDCardDriver;

    :goto_0
    new-instance v0, Lcom/sunrise/b;

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/b;-><init>(Landroid/content/Context;Lcom/sunrise/reader/ManagerInfo;)V

    iput-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->m:Lcom/sunrise/b;

    return-void

    :cond_0
    new-instance v0, Lcom/sunrise/reader/n;

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sunrise/reader/n;-><init>(Landroid/content/Context;Lcom/sunrise/reader/h;Lcom/sunrise/reader/j;Lcom/sunrise/reader/k;Lcom/sunrise/reader/ManagerInfo;)V

    iput-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    goto :goto_0
.end method

.method private readCard(J)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const-string v1, ""

    new-instance v0, Lcom/sunrise/icardreader/model/IdentityCardZ;

    invoke-direct {v0}, Lcom/sunrise/icardreader/model/IdentityCardZ;-><init>()V

    iput-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sunrise/reader/ManagerInfo;->setConnectMethod(I)Lcom/sunrise/reader/ManagerInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/OTGAndNFCClient;->f:I

    iget-boolean v0, p0, Lcom/sunrise/OTGAndNFCClient;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->l:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/reader/ReadIDCardDriver;->readId(J)I

    move-result v0

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->l:Lcom/sunrise/reader/ReadIDCardDriver;

    iget-object v2, v2, Lcom/sunrise/reader/ReadIDCardDriver;->dianxinData:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->l:Lcom/sunrise/reader/ReadIDCardDriver;

    iget-object v1, v2, Lcom/sunrise/reader/ReadIDCardDriver;->dianxinData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/sunrise/OTGAndNFCClient;->h:Z

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/reader/n;->a(J)I

    move-result v0

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    iget-object v2, v2, Lcom/sunrise/reader/n;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    iget-object v1, v2, Lcom/sunrise/reader/n;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iput v1, v2, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    const/4 v2, -0x4

    iput v2, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_2
    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_0
.end method

.method private readCardSync()Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3a98

    invoke-direct {p0, v0, v1}, Lcom/sunrise/OTGAndNFCClient;->readCard(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget-object v1, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/sunrise/OTGAndNFCClient;->i:I

    if-nez v1, :cond_1

    const/4 v1, -0x6

    iput v1, p0, Lcom/sunrise/OTGAndNFCClient;->i:I

    :cond_1
    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v2, p0, Lcom/sunrise/OTGAndNFCClient;->i:I

    iput v2, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    goto :goto_0
.end method

.method private registerOTGCard()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sunrise/OTGAndNFCClient;->k:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->l:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-virtual {v2}, Lcom/sunrise/reader/ReadIDCardDriver;->openReader()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/sunrise/OTGAndNFCClient;->h:Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTG\u6ce8\u518c\u7ed3\u679c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v2}, Lcom/sunrise/reader/n;->d()I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v1}, Lcom/sunrise/reader/n;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sunrise/OTGAndNFCClient;->n:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private setTheServer(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/sunrise/OTGAndNFCClient;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sunrise/OTGAndNFCClient;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SERVER:"

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

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    new-instance v1, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v1}, Lcom/sunrise/reader/ReaderServerInfo;-><init>()V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    iget v2, p0, Lcom/sunrise/OTGAndNFCClient;->b:I

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->port(I)Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ManagerInfo;->setServer(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v1}, Lcom/sunrise/reader/ManagerInfo;->theSetServer()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/n;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public cloudReadCert(Ljava/lang/String;Ljava/util/List;ILandroid/nfc/Tag;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    const-string v0, ""

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/ManagerInfo;->token(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p5}, Lcom/sunrise/reader/ManagerInfo;->redisServer(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, p6}, Lcom/sunrise/reader/ManagerInfo;->crmSn(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    new-instance v0, Lcom/sunrise/icardreader/model/IdentityCardZ;

    invoke-direct {v0}, Lcom/sunrise/icardreader/model/IdentityCardZ;-><init>()V

    iput-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :cond_0
    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    const/16 v2, -0xa

    iput v2, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    move-object v1, v0

    :goto_0
    if-ne p3, v8, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/sunrise/OTGAndNFCClient;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v0}, Lcom/sunrise/reader/n;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "resultFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v3, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorMsg"

    sget-object v2, Lcom/sunrise/reader/u;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v3, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "resultContent"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->a:Ljava/lang/String;

    iget v3, p0, Lcom/sunrise/OTGAndNFCClient;->b:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sunrise/reader/u;->a(ILcom/sunrise/reader/ManagerInfo;Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    return-object v5

    :cond_3
    move v2, v1

    move-object v1, v0

    :goto_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v3

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/sunrise/OTGAndNFCClient;->setTheServer(Ljava/lang/String;I)V

    if-ne p3, v8, :cond_6

    invoke-direct {p0}, Lcom/sunrise/OTGAndNFCClient;->readCardSync()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_5

    const/4 v0, -0x2

    :goto_4
    iput v0, v6, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    move-object v0, v1

    :goto_5
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v2, v2, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const/16 v6, -0x9

    if-eq v2, v6, :cond_3

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v2, v2, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const/4 v6, -0x3

    if-eq v2, v6, :cond_3

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v2, v2, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    const/4 v6, -0x8

    if-eq v2, v6, :cond_3

    :cond_4
    move-object v1, v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    goto :goto_4

    :cond_6
    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->m:Lcom/sunrise/b;

    iget-boolean v0, v0, Lcom/sunrise/b;->d:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->m:Lcom/sunrise/b;

    invoke-virtual {v0, p4}, Lcom/sunrise/b;->a(Landroid/nfc/Tag;)Z

    :cond_7
    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->m:Lcom/sunrise/b;

    invoke-virtual {v0}, Lcom/sunrise/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget-object v6, p0, Lcom/sunrise/OTGAndNFCClient;->m:Lcom/sunrise/b;

    iget v6, v6, Lcom/sunrise/b;->a:I

    iput v6, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "resultFlag"

    const-string v2, "99"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultContent"

    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v0, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->a:Ljava/lang/String;

    iget v3, p0, Lcom/sunrise/OTGAndNFCClient;->b:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sunrise/reader/u;->a(ILcom/sunrise/reader/ManagerInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iget v1, v1, Lcom/sunrise/icardreader/model/IdentityCardZ;->resCode:I

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    iget-object v3, p0, Lcom/sunrise/OTGAndNFCClient;->a:Ljava/lang/String;

    iget v5, p0, Lcom/sunrise/OTGAndNFCClient;->b:I

    invoke-static {v1, v2, v3, v5, v4}, Lcom/sunrise/reader/u;->a(ILcom/sunrise/reader/ManagerInfo;Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v1

    goto/16 :goto_5

    :cond_9
    move-object v1, v0

    move v2, v3

    goto/16 :goto_3
.end method

.method public connect(ILandroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/sunrise/OTGAndNFCClient;->registerOTGCard()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sunrise/OTGAndNFCClient;->getReaderInfo()Ljava/util/Map;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "resultFlag"

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorMsg"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->m:Lcom/sunrise/b;

    invoke-virtual {v2, p2}, Lcom/sunrise/b;->a(Landroid/nfc/NfcAdapter$ReaderCallback;)V

    goto :goto_0

    :cond_2
    const-string v0, "resultFlag"

    const-string v2, "-1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorMsg"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public disconnect()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/sunrise/OTGAndNFCClient;->closedReader()V

    const-string v1, "resultFlag"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getReaderInfo()Ljava/util/Map;
    .locals 10

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sn"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "factoryName"

    const-string v2, ""

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

    const-string v0, "Sunrise"

    :try_start_0
    iget-boolean v2, p0, Lcom/sunrise/OTGAndNFCClient;->k:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/sunrise/reader/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    sget-wide v8, Landroid/os/Build;->TIME:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sn"

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "factoryName"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "creatTime"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/sunrise/OTGAndNFCClient;->n:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v2}, Lcom/sunrise/reader/n;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v3}, Lcom/sunrise/reader/n;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x3

    :try_start_2
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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->d:Lcom/sunrise/reader/n;

    invoke-virtual {v0}, Lcom/sunrise/reader/n;->j()Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "factoryName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setFactoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareModel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "creatTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setProductionDate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "verCode"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setHardwareVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/OTGAndNFCClient;->g:Lcom/sunrise/reader/ManagerInfo;

    const-string v0, "sn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ManagerInfo;->setReaderSN(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getStatus()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public idImage([B)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;

    iput-object p1, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    return-void
.end method

.method public idInfo(Lcom/sunrise/icardreader/model/IdentityCardZ;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/sunrise/OTGAndNFCClient;->c:Lcom/sunrise/icardreader/model/IdentityCardZ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public idInfoText([B)V
    .locals 0

    return-void
.end method

.method public onNetDelayChange(J)V
    .locals 0

    return-void
.end method

.method public stateChanged(I)V
    .locals 0

    return-void
.end method

.method public tryAgain(I)Z
    .locals 1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
