.class public Lcom/sunrise/reader/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/r/b;


# instance fields
.field private a:Lcom/sunrise/reader/ManagerInfo;

.field private b:Lcom/sunrise/reader/ReaderServerInfo;


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/ManagerInfo;Lcom/sunrise/reader/ReaderServerInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    iput-object p1, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    iput-object p2, p0, Lcom/sunrise/reader/q;->b:Lcom/sunrise/reader/ReaderServerInfo;

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/r/d;)I
    .locals 11

    const/4 v1, -0x3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v2}, Lcom/sunrise/reader/ManagerInfo;->authorise()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/sunrise/u/b;

    invoke-direct {v2}, Lcom/sunrise/u/b;-><init>()V

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sunrise/reader/GuidUtils;->getCurrentId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sunrise/a/b;

    invoke-direct {v4}, Lcom/sunrise/a/b;-><init>()V

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sunrise/reader/ReaderServerInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v6, :cond_1

    array-length v5, v6

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v7, v6, v0

    new-instance v8, Lcom/sunrise/a/e;

    invoke-direct {v8}, Lcom/sunrise/a/e;-><init>()V

    const-string v9, "IP"

    invoke-virtual {v7}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "DELAY"

    invoke-virtual {v7}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v8}, Lcom/sunrise/a/b;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ""

    iget-object v5, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v5}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v5}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Lcom/sunrise/w/a;

    invoke-direct {v0}, Lcom/sunrise/w/a;-><init>()V

    iget-object v5, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v5}, Lcom/sunrise/reader/ManagerInfo;->accessPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/sunrise/w/a;->a([B[B)[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v6, v7}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const-string v5, "ACCESS_ACCOUNT"

    iget-object v6, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v5

    const-string v6, "ACCESS_PASSWORD"

    invoke-virtual {v5, v6, v0}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v5, "DEVICE_SN"

    iget-object v6, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->deviceSn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v5, "DEVICE_CONNECT_METHOD"

    iget-object v6, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->connectMethod()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v5, "BUSINESS_DATA"

    iget-object v6, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v6}, Lcom/sunrise/reader/ManagerInfo;->datas()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v5, "SEQUENCE"

    invoke-virtual {v0, v5, v3}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "SERVER_NET_DELAY"

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "NET_DELAY"

    iget-object v4, p0, Lcom/sunrise/reader/q;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "TERMINAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v3

    const-string v4, "TERMINAL_VERSION"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "DRIVER_VERSION"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->driverVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "IDENTITY"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->identity()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "DECRYPT_PHOTO"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->isDecryptPhoto()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "TOKEN"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->token()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "REDIS_SERVER"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->redisServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "APP_ID"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->appid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "API_VERSION"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->apiVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "FACTORY_NAME"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->getFactoryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "HARDWARE_VERSION"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "HARDWARE_MODEL"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->getHardwareModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "PRODUCTION_DATE"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->getProductionDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "READER_SN"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->getReaderSN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "SIGN_RANDOM"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->getSignRandom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "SIGNATURE"

    iget-object v4, p0, Lcom/sunrise/reader/q;->a:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ManagerInfo;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const-string v3, "PROCESS_FLAG"

    const-string v4, "safe"

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sunrise/u/b;->a(B)Lcom/sunrise/u/a;

    invoke-virtual {p1, v2}, Lcom/sunrise/r/d;->b(Lcom/sunrise/u/a;)V

    invoke-virtual {p1}, Lcom/sunrise/r/d;->b()Lcom/sunrise/u/a;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/sunrise/u/b;

    if-nez v2, :cond_5

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    check-cast v0, Lcom/sunrise/u/b;

    invoke-virtual {v0}, Lcom/sunrise/u/b;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ACCESS_ID"

    const-string v3, "ACCESS_ID"

    invoke-virtual {v0, v3}, Lcom/sunrise/u/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sunrise/r/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/r/d;

    :cond_6
    invoke-virtual {v0}, Lcom/sunrise/u/b;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/sunrise/r/d;Lcom/sunrise/u/b;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunrise/reader/q;->a(Lcom/sunrise/r/d;)I

    move-result v0

    return v0
.end method
