.class public Lcom/sunrise/reader/n;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/sunrise/reader/m;

.field private c:Lcom/sunrise/reader/j;

.field private d:Lcom/sunrise/reader/h;

.field private e:Lcom/sunrise/reader/k;

.field private f:Lcom/sunrise/reader/ReaderManagerService;

.field private g:Lcom/sunrise/reader/ManagerInfo;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:J

.field private k:[B

.field private l:Landroid/content/Context;

.field private m:Ljava/util/List;

.field private n:I

.field private o:Z

.field private p:Lcom/sunrise/bluetooth/Reader;

.field private q:Lcom/sunrise/reader/g;

.field private r:Ljava/lang/String;

.field private s:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sunrise/reader/h;Lcom/sunrise/reader/j;Lcom/sunrise/reader/k;Lcom/sunrise/reader/ManagerInfo;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/n;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/n;->i:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/n;->a:Ljava/lang/String;

    const/4 v0, -0x7

    iput v0, p0, Lcom/sunrise/reader/n;->n:I

    iput-boolean v2, p0, Lcom/sunrise/reader/n;->o:Z

    new-instance v0, Lcom/sunrise/bluetooth/Reader;

    invoke-direct {v0}, Lcom/sunrise/bluetooth/Reader;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/n;->p:Lcom/sunrise/bluetooth/Reader;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/n;->r:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0100000500"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "0200000500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0300000500"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0400000500"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0500000500"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sunrise/reader/n;->s:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    iput-object p3, p0, Lcom/sunrise/reader/n;->c:Lcom/sunrise/reader/j;

    iput-object p4, p0, Lcom/sunrise/reader/n;->e:Lcom/sunrise/reader/k;

    iput-object p5, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    iput-object p1, p0, Lcom/sunrise/reader/n;->l:Landroid/content/Context;

    new-instance v0, Lcom/sunrise/reader/m;

    invoke-direct {v0, p1}, Lcom/sunrise/reader/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-direct {p0}, Lcom/sunrise/reader/n;->k()V

    invoke-virtual {p5}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/n;->k:[B

    return-void
.end method

.method private a(Lcom/sunrise/reader/f;)I
    .locals 5

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/sunrise/reader/o;

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-direct {v1, p0, v0, p1}, Lcom/sunrise/reader/o;-><init>(Lcom/sunrise/reader/n;Lcom/sunrise/reader/m;Lcom/sunrise/reader/f;)V

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v0, "FFFFFFFFFF"

    :cond_2
    iget-object v2, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v3, v0}, Lcom/sunrise/reader/ManagerInfo;->deviceSn(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/ReaderManagerService;->setManagerInfo(Lcom/sunrise/reader/ManagerInfo;)Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->deviceSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/sunrise/reader/n;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/sunrise/reader/o;->start()V

    iget-object v2, p0, Lcom/sunrise/reader/n;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/n;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/sunrise/reader/o;->interrupt()V

    iget-boolean v0, p0, Lcom/sunrise/reader/n;->o:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v0}, Lcom/sunrise/reader/m;->d()[B

    :goto_2
    invoke-static {v1}, Lcom/sunrise/reader/o;->a(Lcom/sunrise/reader/o;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunrise/reader/n;->j:J

    invoke-virtual {v1}, Lcom/sunrise/reader/o;->a()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "OTGReaderDrvier"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v1}, Lcom/sunrise/reader/o;->interrupt()V

    iget-boolean v0, p0, Lcom/sunrise/reader/n;->o:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v0}, Lcom/sunrise/reader/m;->d()[B

    goto :goto_2

    :cond_4
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    iget-object v2, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    goto :goto_2

    :cond_5
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    iget-object v2, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v2, v0}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/reader/o;->interrupt()V

    iget-boolean v1, p0, Lcom/sunrise/reader/n;->o:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v1}, Lcom/sunrise/reader/m;->d()[B

    :goto_3
    throw v0

    :cond_6
    new-array v1, v4, [B

    fill-array-data v1, :array_2

    iget-object v2, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v2, v1}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0xat
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xat
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/sunrise/reader/n;I)I
    .locals 0

    iput p1, p0, Lcom/sunrise/reader/n;->n:I

    return p1
.end method

.method static synthetic a(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/sunrise/reader/n;Lcom/sunrise/u/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/u/a;)V

    return-void
.end method

.method private a(Lcom/sunrise/u/a;)V
    .locals 8

    const/16 v7, 0x10

    const/4 v5, 0x3

    const/16 v4, 0x100

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sunrise/u/a;->d()B

    move-result v0

    const/16 v1, -0xc

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/sunrise/w/a;

    invoke-direct {v0}, Lcom/sunrise/w/a;-><init>()V

    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/n;->k:[B

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/w/a;->b([B[B)[B

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v3, Lcom/sunrise/icardreader/model/IdentityCardZ;

    invoke-direct {v3}, Lcom/sunrise/icardreader/model/IdentityCardZ;-><init>()V

    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalStringNotDecode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalBytesNotDecode:[B

    iget-object v0, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    invoke-interface {v0, v3}, Lcom/sunrise/reader/h;->idInfo(Lcom/sunrise/icardreader/model/IdentityCardZ;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->authorise()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/sunrise/w/a;

    invoke-direct {v0}, Lcom/sunrise/w/a;-><init>()V

    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/n;->k:[B

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/w/a;->b([B[B)[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china_mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, v4, [B

    invoke-static {v2, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sunrise/q/a;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalString:Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalBytes:[B

    const-string v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->name:Ljava/lang/String;

    const-string v0, "address"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->address:Ljava/lang/String;

    const-string v0, "authority"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->authority:Ljava/lang/String;

    const-string v0, "birth"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->birth:Ljava/lang/String;

    const-string v0, "birth"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sunrise/icardreader/model/IdentityCardZ;->formatBirth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->birthPrim:Ljava/lang/String;

    const-string v0, "cardNo"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->cardNo:Ljava/lang/String;

    const-string v0, "ethnicity"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->ethnicity:Ljava/lang/String;

    const-string v0, "period"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->period:Ljava/lang/String;

    iget-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->period:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodStart:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodEnd:Ljava/lang/String;

    iget-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodStart:Ljava/lang/String;

    iget-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodEnd:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/sunrise/icardreader/model/IdentityCardZ;->formatPeriod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodPrim:Ljava/lang/String;

    const-string v0, "sex"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->sex:Ljava/lang/String;

    iget-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodPrim:Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->period:Ljava/lang/String;

    iget-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->birthPrim:Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->birth:Ljava/lang/String;

    iget-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->sex:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u7537"

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->sex:Ljava/lang/String;

    :goto_2
    const-string v0, "picture"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    const-string v0, "dn"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->dn:Ljava/lang/String;

    const-string v0, "UUID"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->UUID:Ljava/lang/String;

    const-string v0, "nfcSignature"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->nfcSignature:Ljava/lang/String;

    const-string v0, "timeTag"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->timeTag:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    iget-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalBytes:[B

    invoke-interface {v0, v1}, Lcom/sunrise/reader/h;->idInfoText([B)V

    iget-object v0, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    iget-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    invoke-interface {v0, v1}, Lcom/sunrise/reader/h;->idImage([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idImageLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    invoke-interface {v0, v3}, Lcom/sunrise/reader/h;->idInfo(Lcom/sunrise/icardreader/model/IdentityCardZ;)V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    const-string v0, "\u5973"

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->sex:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :cond_7
    new-array v0, v4, [B

    invoke-static {v2, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sunrise/v/b;->a([BLjava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Lcom/sunrise/q/a;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalString:Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalBytes:[B

    const-string v0, "ID_NAME"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->name:Ljava/lang/String;

    const-string v0, "ID_ADDRESS"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->address:Ljava/lang/String;

    const-string v0, "ID_ASSIGN_ORG"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->authority:Ljava/lang/String;

    const-string v0, "ID_BIRTHDAY"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->birth:Ljava/lang/String;

    const-string v0, "ID_BIRTHDAY"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/sunrise/icardreader/model/IdentityCardZ;->formatBirth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->birthPrim:Ljava/lang/String;

    const-string v0, "ID_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->cardNo:Ljava/lang/String;

    const-string v0, "ID_NATION_NAME"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->ethnicity:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ID_VALID_FROM"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "ID_VALID_TO"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->period:Ljava/lang/String;

    iget-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->period:Ljava/lang/String;

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v0, "ID_VALID_FROM"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ID_VALID_TO"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/sunrise/icardreader/model/IdentityCardZ;->formatPeriod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodPrim:Ljava/lang/String;

    const-string v0, "ID_GENDER_NAME"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->sex:Ljava/lang/String;

    const-string v0, "ID_VALID_FROM"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodStart:Ljava/lang/String;

    const-string v0, "ID_VALID_TO"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->periodEnd:Ljava/lang/String;

    const/16 v0, 0x104

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x105

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const-string v1, "OTGReaderDrvier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [B

    const/16 v4, 0x106

    array-length v5, v1

    invoke-static {v2, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    array-length v1, v2

    add-int/lit16 v4, v0, 0x106

    add-int/lit8 v4, v4, 0x3

    if-le v1, v4, :cond_5

    new-array v1, v7, [B

    add-int/lit16 v0, v0, 0x106

    add-int/lit8 v0, v0, 0x3

    array-length v4, v1

    invoke-static {v2, v0, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v6, v6, v7}, Lcom/sunrise/p/b;->a([BIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->dn:Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/sunrise/reader/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sunrise/reader/n;->o:Z

    return p1
.end method

.method static synthetic a(Lcom/sunrise/reader/n;[BLjava/lang/String;I)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/reader/n;->a([BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;I)[B
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x12

    :try_start_1
    invoke-virtual {v4, v1}, Ljava/net/Socket;->setTrafficClass(I)V

    const/16 v1, 0x40

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    const/16 v1, 0x40

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v1, 0x1b58

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0xfa0

    invoke-virtual {v4, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    array-length v2, p1

    invoke-virtual {v3, p1, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_0

    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u8f93\u5165\u6d41"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catch_0
    move-exception v1

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x2

    :try_start_6
    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v5, 0x2

    new-array v5, v5, [B

    invoke-virtual {v2, v5}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v5}, Lcom/sunrise/p/a;->a(ZII[B)I

    move-result v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    add-int/lit8 v5, v5, -0x2

    new-array v5, v5, [B

    invoke-virtual {v2, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    new-instance v9, Lcom/sunrise/u/a;

    invoke-direct {v9}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v9, v6}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sunrise/u/a;->d([B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sunrise/u/a;->c([B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/u/a;->b()[B
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    :goto_2
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_3
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :goto_4
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_0

    :catch_a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_0

    :catch_b
    move-exception v1

    move-object v2, v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/sunrise/reader/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/n;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/sunrise/reader/n;)I
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/reader/n;->m()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/sunrise/reader/n;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunrise/reader/n;->j:J

    return-wide v0
.end method

.method static synthetic e(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/h;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->d:Lcom/sunrise/reader/h;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/sunrise/reader/n;)I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/n;->n:I

    return v0
.end method

.method static synthetic g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->c:Lcom/sunrise/reader/j;

    return-object v0
.end method

.method static synthetic h(Lcom/sunrise/reader/n;)Lcom/sunrise/bluetooth/Reader;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->p:Lcom/sunrise/bluetooth/Reader;

    return-object v0
.end method

.method static synthetic i(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/ReaderManagerService;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    return-object v0
.end method

.method static synthetic j(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/g;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->q:Lcom/sunrise/reader/g;

    return-object v0
.end method

.method static synthetic k(Lcom/sunrise/reader/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->r:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ReaderManagerService;->setManagerInfo(Lcom/sunrise/reader/ManagerInfo;)Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    iget-object v0, p0, Lcom/sunrise/reader/n;->c:Lcom/sunrise/reader/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/n;->c:Lcom/sunrise/reader/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    iget-object v0, p0, Lcom/sunrise/reader/n;->c:Lcom/sunrise/reader/j;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/sunrise/reader/n;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v0}, Lcom/sunrise/reader/m;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reader state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v1}, Lcom/sunrise/reader/m;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u9605\u8bfb\u5668\u672a\u8fde\u63a5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "reader null"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private m()I
    .locals 12

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/GuidUtils;->newRandom()Ljava/lang/String;

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/GuidUtils;->getCurrentId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTG\u6b63\u5728\u8bfb\u53d6,\u6d41\u6c34\u53f7:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/ManagerInfo;->setSignRandom(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unicom_china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sunrise/reader/n;->n()V

    :cond_0
    new-instance v9, Lcom/sunrise/reader/f;

    iget-object v0, p0, Lcom/sunrise/reader/n;->c:Lcom/sunrise/reader/j;

    invoke-direct {v9, v0}, Lcom/sunrise/reader/f;-><init>(Lcom/sunrise/reader/j;)V

    :try_start_0
    iget-object v1, p0, Lcom/sunrise/reader/n;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/n;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_2

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    move v0, v2

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "OTGReaderDrvier"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    move v0, v2

    goto :goto_0

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_3

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    move v0, v2

    goto :goto_0

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/sunrise/reader/n;->m:Ljava/util/List;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    :goto_1
    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    move v0, v2

    goto :goto_0

    :cond_6
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sunrise/reader/n;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    throw v0

    :cond_8
    :try_start_9
    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getServerIndex()I

    move-result v4

    if-lez v4, :cond_9

    add-int/lit8 v0, v4, -0x1

    move v1, v0

    :goto_3
    const/4 v0, 0x1

    move v6, v0

    move v7, v3

    move v5, v3

    move v0, v4

    :goto_4
    if-nez v7, :cond_a

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v9, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v0, v4

    move v4, v5

    :goto_5
    const-wide/16 v10, 0x32

    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_6
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4f7f\u7528\u670d\u52a1\u5668 ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "]\u8fdb\u884c\u89e3\u6790"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6b63\u5728\u8bfb\u53d6:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\u6b21"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/f;)I

    move-result v5

    iput v5, p0, Lcom/sunrise/reader/n;->n:I

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    if-eqz v6, :cond_f

    iget v6, p0, Lcom/sunrise/reader/n;->n:I

    const/4 v7, -0x8

    if-ne v6, v7, :cond_f

    iget v0, p0, Lcom/sunrise/reader/n;->n:I
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_9
    :try_start_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_3

    :cond_a
    const/4 v4, 0x2

    if-lt v5, v4, :cond_14

    if-ne v0, v1, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/sunrise/reader/n;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china_telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v3

    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v9, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;

    invoke-direct {p0, v9}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/f;)I

    move-result v0

    iput v0, p0, Lcom/sunrise/reader/n;->n:I

    iget v0, p0, Lcom/sunrise/reader/n;->n:I

    if-nez v0, :cond_13

    :cond_c
    iget v0, p0, Lcom/sunrise/reader/n;->n:I
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v4, v0, 0x1

    :try_start_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_e

    move v4, v3

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u5668 ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] \u5df2\u7ecf\u8fde\u7eed 2 \u6b21\u5931\u8d25\uff0c\u5207\u6362\u5230\u4e0b\u4e00\u4e2a\u670d\u52a1\u5668"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v0, "OTGReaderDrvier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u670d\u52a1\u5668 ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "] \u5df2\u7ecf\u8fde\u7eed 2 \u6b21\u5931\u8d25\uff0c\u5207\u6362\u5230\u4e0b\u4e00\u4e2a\u670d\u52a1\u5668"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v4, v0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v9, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;

    move v0, v4

    move v4, v3

    goto/16 :goto_5

    :cond_f
    iget v6, p0, Lcom/sunrise/reader/n;->n:I

    if-eq v6, v2, :cond_10

    iget v6, p0, Lcom/sunrise/reader/n;->n:I

    const/16 v7, -0xb

    if-eq v6, v7, :cond_10

    iget v6, p0, Lcom/sunrise/reader/n;->n:I

    if-lez v6, :cond_11

    :cond_10
    iget v0, p0, Lcom/sunrise/reader/n;->n:I
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_11
    :try_start_e
    iget v6, p0, Lcom/sunrise/reader/n;->n:I

    if-nez v6, :cond_12

    iget v0, p0, Lcom/sunrise/reader/n;->n:I
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_12
    :try_start_f
    iget-object v6, p0, Lcom/sunrise/reader/n;->e:Lcom/sunrise/reader/k;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sunrise/reader/n;->e:Lcom/sunrise/reader/k;

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6, v7}, Lcom/sunrise/reader/k;->tryAgain(I)Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v6

    if-eqz v6, :cond_b

    move v6, v3

    move v7, v5

    move v5, v4

    goto/16 :goto_4

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_7

    :catch_1
    move-exception v5

    goto/16 :goto_6

    :cond_14
    move v4, v5

    goto/16 :goto_5
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/sunrise/y/a;->g(B)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sunrise/y/a;->f(B)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sunrise/y/a;->c(B)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sunrise/y/a;->d(B)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/sunrise/y/a;->a(B)V

    invoke-virtual {p0}, Lcom/sunrise/reader/n;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sunrise/reader/n;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/sunrise/reader/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/y/a;->e([B)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/y/a;->d([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sunrise/reader/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/y/a;->c([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(J)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    monitor-enter v1

    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, p0, Lcom/sunrise/reader/n;->j:J

    new-instance v2, Lcom/sunrise/reader/n$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sunrise/reader/n$1;-><init>(Lcom/sunrise/reader/n;[ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/sunrise/reader/n$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    aget v0, v0, v5

    return v0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    const/4 v4, -0x7

    :try_start_3
    aput v4, v0, v3

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :array_0
    .array-data 4
        -0x5
        0x0
    .end array-data
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->unRegisterReceiver()V

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v0}, Lcom/sunrise/reader/m;->b()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/n;->m:Ljava/util/List;

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/n;->p:Lcom/sunrise/bluetooth/Reader;

    invoke-static {p1}, Lcom/sunrise/bluetooth/Reader;->setKey([B)I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x28

    const/16 v5, 0x10

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sunrise/reader/n;->l()V

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/m;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    new-array v1, v5, [B

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v4, v4, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x26

    invoke-direct {p0}, Lcom/sunrise/reader/n;->l()V

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/m;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public d()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v1}, Lcom/sunrise/reader/m;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/m;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/m;->a(I)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x28

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {p0}, Lcom/sunrise/reader/n;->l()V

    iget-object v0, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/m;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public g()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/sunrise/reader/n;->h()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v3, "SUNRISE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "OTGReaderDrvier"

    const-string v2, "unsupport downer than api 21"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, ""

    :try_start_1
    invoke-virtual {p0}, Lcom/sunrise/reader/n;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000000000"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :try_start_2
    const-string v2, "OTGReaderDrvier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const/16 v2, 0x7e1

    if-ge v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move v3, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public h()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/n;->l:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public i()[B
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    new-array v1, v4, [B

    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/sunrise/reader/n;->r:Ljava/lang/String;

    const-string v0, "OTGReaderDrvier"

    iget-object v2, p0, Lcom/sunrise/reader/n;->r:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->c([B)Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method public j()Ljava/util/Map;
    .locals 10

    const/4 v9, 0x4

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

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    iget-object v2, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    iget-object v3, p0, Lcom/sunrise/reader/n;->s:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v9, :cond_0

    const/4 v3, 0x4

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/4 v2, 0x7

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    iget-object v4, p0, Lcom/sunrise/reader/n;->s:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-le v4, v9, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x6

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    iget-object v5, p0, Lcom/sunrise/reader/n;->s:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-le v5, v9, :cond_2

    const/4 v5, 0x4

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/16 v4, 0x18

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    iget-object v6, p0, Lcom/sunrise/reader/n;->s:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    if-le v6, v9, :cond_3

    const/4 v6, 0x4

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/16 v5, 0x8

    new-array v5, v5, [B

    iget-object v6, p0, Lcom/sunrise/reader/n;->b:Lcom/sunrise/reader/m;

    iget-object v7, p0, Lcom/sunrise/reader/n;->s:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v7, v6

    if-le v7, v9, :cond_4

    const/4 v7, 0x4

    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v6, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    const-string v6, "sn"

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "factoryName"

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "creatTime"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
