.class public Lcom/sunrise/reader/c;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/UUID;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:[B

.field private e:Lcom/sunrise/reader/a;

.field private f:Lcom/sunrise/reader/j;

.field private g:Lcom/sunrise/reader/h;

.field private h:Lcom/sunrise/reader/k;

.field private i:Lcom/sunrise/reader/ReaderManagerService;

.field private j:Lcom/sunrise/reader/ManagerInfo;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:J

.field private n:Z

.field private o:[B

.field private p:Ljava/lang/String;

.field private q:Ljava/util/List;

.field private r:I

.field private s:Z

.field private t:Lcom/sunrise/bluetooth/Reader;

.field private u:Lcom/sunrise/reader/g;

.field private v:Ljava/lang/String;

.field private w:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sunrise/reader/c;->a:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sunrise/reader/h;Lcom/sunrise/reader/j;Lcom/sunrise/reader/k;Lcom/sunrise/reader/ManagerInfo;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sunrise/reader/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/c;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/c;->l:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunrise/reader/c;->m:J

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/c;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/c;->c:Ljava/lang/String;

    const/4 v0, -0x7

    iput v0, p0, Lcom/sunrise/reader/c;->r:I

    iput-boolean v2, p0, Lcom/sunrise/reader/c;->s:Z

    new-instance v0, Lcom/sunrise/bluetooth/Reader;

    invoke-direct {v0}, Lcom/sunrise/bluetooth/Reader;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/c;->t:Lcom/sunrise/bluetooth/Reader;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/c;->v:Ljava/lang/String;

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

    const-string v1, "0400000500"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "0500000500"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sunrise/reader/c;->w:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sunrise/reader/c;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

    iput-object p3, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    iput-object p4, p0, Lcom/sunrise/reader/c;->h:Lcom/sunrise/reader/k;

    iput-object p5, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-direct {p0}, Lcom/sunrise/reader/c;->i()V

    invoke-virtual {p5}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/c;->o:[B

    return-void
.end method

.method private a(Lcom/sunrise/reader/f;)I
    .locals 4

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/sunrise/reader/d;

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-direct {v1, p0, v0, p1}, Lcom/sunrise/reader/d;-><init>(Lcom/sunrise/reader/c;Lcom/sunrise/reader/a;Lcom/sunrise/reader/f;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/sunrise/reader/d;->start()V

    iget-object v2, p0, Lcom/sunrise/reader/c;->k:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/c;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/sunrise/reader/d;->interrupt()V

    invoke-static {v1}, Lcom/sunrise/reader/d;->a(Lcom/sunrise/reader/d;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunrise/reader/c;->m:J

    invoke-virtual {v1}, Lcom/sunrise/reader/d;->a()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Lcom/sunrise/reader/d;->interrupt()V

    invoke-static {v1}, Lcom/sunrise/reader/d;->a(Lcom/sunrise/reader/d;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunrise/reader/c;->m:J

    invoke-virtual {v1}, Lcom/sunrise/reader/d;->a()I

    move-result v0

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/reader/d;->interrupt()V

    invoke-static {v1}, Lcom/sunrise/reader/d;->a(Lcom/sunrise/reader/d;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunrise/reader/c;->m:J

    invoke-virtual {v1}, Lcom/sunrise/reader/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/sunrise/reader/c;Lcom/sunrise/u/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/u/a;)V

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

    new-instance v0, Lcom/sunrise/v/f;

    invoke-direct {v0}, Lcom/sunrise/v/f;-><init>()V

    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/c;->o:[B

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/v/f;->a([B[B)[B

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v3, Lcom/sunrise/icardreader/model/IdentityCardZ;

    invoke-direct {v3}, Lcom/sunrise/icardreader/model/IdentityCardZ;-><init>()V

    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

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

    iget-object v0, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

    invoke-interface {v0, v3}, Lcom/sunrise/reader/h;->idInfo(Lcom/sunrise/icardreader/model/IdentityCardZ;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->authorise()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/sunrise/v/f;

    invoke-direct {v0}, Lcom/sunrise/v/f;-><init>()V

    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/c;->o:[B

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/v/f;->a([B[B)[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

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
    iget-object v0, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

    iget-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalBytes:[B

    invoke-interface {v0, v1}, Lcom/sunrise/reader/h;->idInfoText([B)V

    iget-object v0, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

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

    iget-object v0, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

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

    const-string v1, "BTReaderDriver"

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

.method static synthetic a(Lcom/sunrise/reader/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sunrise/reader/c;->s:Z

    return p1
.end method

.method static synthetic a(Lcom/sunrise/reader/c;[BLjava/lang/String;I)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/reader/c;->a([BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;I)[B
    .locals 11

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-static {p1, v4, v4, v3}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v5, "BTReaderDriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v7, v8, v9, v10}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    goto/16 :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

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

.method static synthetic b(Lcom/sunrise/reader/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/reader/c;->j()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/sunrise/reader/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunrise/reader/c;->m:J

    return-wide v0
.end method

.method static synthetic d(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/h;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->g:Lcom/sunrise/reader/h;

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

.method static synthetic e(Lcom/sunrise/reader/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/c;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/sunrise/reader/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/c;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/j;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    return-object v0
.end method

.method static synthetic h(Lcom/sunrise/reader/c;)Lcom/sunrise/bluetooth/Reader;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->t:Lcom/sunrise/bluetooth/Reader;

    return-object v0
.end method

.method static synthetic i(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/g;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->u:Lcom/sunrise/reader/g;

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ReaderManagerService;->setManagerInfo(Lcom/sunrise/reader/ManagerInfo;)Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    iget-object v0, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    iget-object v0, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_0
    return-void
.end method

.method private j()I
    .locals 12

    const/16 v1, -0xa

    const/4 v2, 0x0

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/GuidUtils;->newRandom()Ljava/lang/String;

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/GuidUtils;->getCurrentId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u84dd\u7259\u6b63\u5728\u8bfb\u53d6,\u6d41\u6c34\u53f7:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v3, v0}, Lcom/sunrise/reader/ManagerInfo;->setSignRandom(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sunrise/reader/c;->k()V

    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v3, "unicom_china"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sunrise/reader/c;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v9, Lcom/sunrise/reader/f;

    iget-object v0, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    invoke-direct {v9, v0}, Lcom/sunrise/reader/f;-><init>(Lcom/sunrise/reader/j;)V

    :try_start_1
    iget-object v3, p0, Lcom/sunrise/reader/c;->l:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/c;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "BTReaderDriver"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v1, "BTReaderDriver"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, -0x5

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto :goto_0

    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/sunrise/reader/c;->q:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    :goto_1
    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    move v0, v1

    goto :goto_0

    :cond_5
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sunrise/reader/c;->q:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v3}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    throw v0

    :cond_7
    :try_start_9
    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getServerIndex()I

    move-result v3

    if-lez v3, :cond_8

    add-int/lit8 v0, v3, -0x1

    move v7, v0

    :goto_3
    const/4 v0, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sunrise/reader/c;->n:Z

    move v5, v0

    move v6, v2

    move v4, v2

    :goto_4
    if-nez v6, :cond_9

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v9, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v0, v3

    move v3, v4

    :goto_5
    const-wide/16 v10, 0x32

    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_6
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4f7f\u7528\u670d\u52a1\u5668 ["

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "]\u8fdb\u884c\u89e3\u6790"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6b63\u5728\u8bfb\u53d6:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "\u6b21"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/f;)I

    move-result v4

    iput v4, p0, Lcom/sunrise/reader/c;->r:I

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    const-string v6, "BTReaderDriver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tryCountPServ:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_e

    iget v5, p0, Lcom/sunrise/reader/c;->r:I

    const/4 v6, -0x8

    if-ne v5, v6, :cond_e

    iget v0, p0, Lcom/sunrise/reader/c;->r:I
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_8
    :try_start_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    goto/16 :goto_3

    :cond_9
    const/4 v0, 0x2

    if-lt v4, v0, :cond_13

    if-ne v3, v7, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/sunrise/reader/c;->j:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china_telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v2

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v9, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;

    invoke-direct {p0, v9}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/f;)I

    move-result v0

    iput v0, p0, Lcom/sunrise/reader/c;->r:I

    iget v0, p0, Lcom/sunrise/reader/c;->r:I

    if-nez v0, :cond_12

    :cond_b
    iget v0, p0, Lcom/sunrise/reader/c;->r:I
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v3, v3, 0x1

    :try_start_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_d

    move v3, v2

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u670d\u52a1\u5668 ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] \u5df2\u7ecf\u8fde\u7eed 2 \u6b21\u5931\u8d25\uff0c\u5207\u6362\u5230\u4e0b\u4e00\u4e2a\u670d\u52a1\u5668"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v0, "BTReaderDriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u670d\u52a1\u5668 ["

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "] \u5df2\u7ecf\u8fde\u7eed 2 \u6b21\u5931\u8d25\uff0c\u5207\u6362\u5230\u4e0b\u4e00\u4e2a\u670d\u52a1\u5668"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v3, v0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v9, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;

    move v0, v3

    move v3, v2

    goto/16 :goto_5

    :cond_e
    iget v5, p0, Lcom/sunrise/reader/c;->r:I

    if-eq v5, v1, :cond_f

    iget v5, p0, Lcom/sunrise/reader/c;->r:I

    const/16 v6, -0xb

    if-eq v5, v6, :cond_f

    iget v5, p0, Lcom/sunrise/reader/c;->r:I

    if-lez v5, :cond_10

    :cond_f
    iget v0, p0, Lcom/sunrise/reader/c;->r:I
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_10
    :try_start_e
    iget v5, p0, Lcom/sunrise/reader/c;->r:I

    if-nez v5, :cond_11

    iget-object v1, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/ReaderManagerService;->saveServerIndex(I)V

    iget v0, p0, Lcom/sunrise/reader/c;->r:I
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    invoke-virtual {v9}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_11
    :try_start_f
    iget-object v5, p0, Lcom/sunrise/reader/c;->h:Lcom/sunrise/reader/k;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sunrise/reader/c;->h:Lcom/sunrise/reader/k;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v6}, Lcom/sunrise/reader/k;->tryAgain(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/sunrise/reader/c;->n:Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-nez v5, :cond_a

    move v5, v2

    move v6, v4

    move v4, v3

    move v3, v0

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_7

    :catch_2
    move-exception v4

    goto/16 :goto_6

    :cond_13
    move v0, v3

    move v3, v4

    goto/16 :goto_5
.end method

.method static synthetic j(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ReaderManagerService;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->i:Lcom/sunrise/reader/ReaderManagerService;

    return-object v0
.end method

.method static synthetic k(Lcom/sunrise/reader/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-virtual {v0}, Lcom/sunrise/reader/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reader state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-virtual {v1}, Lcom/sunrise/reader/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u9605\u8bfb\u5668\u672a\u8fde\u63a5\uff0c\u8bf7\u5148\u8fde\u63a5\u9605\u8bfb\u5668\u518d\u6267\u884ccardPowerOn"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "reader null"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic l(Lcom/sunrise/reader/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->k:Ljava/lang/Object;

    return-object v0
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/sunrise/y/a;->g(B)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sunrise/y/a;->f(B)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sunrise/y/a;->c(B)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sunrise/y/a;->d(B)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/sunrise/y/a;->a(B)V

    invoke-virtual {p0}, Lcom/sunrise/reader/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/y/a;->e([B)V

    iget-object v0, p0, Lcom/sunrise/reader/c;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sunrise/reader/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
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

    invoke-static {}, Lcom/sunrise/reader/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/y/a;->c([B)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/c;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/c;->c:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sunrise/reader/c;->n:Z

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ReaderManagerService;->setIsBusy(Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    monitor-enter v1

    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, p0, Lcom/sunrise/reader/c;->m:J

    new-instance v2, Lcom/sunrise/reader/c$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sunrise/reader/c$1;-><init>(Lcom/sunrise/reader/c;[ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/sunrise/reader/c$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sunrise/reader/ReaderManagerService;->setIsBusy(Z)V

    aget v0, v0, v4

    return v0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/sunrise/reader/c;->a()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :array_0
    .array-data 4
        -0x7
        0x0
    .end array-data
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/reader/a;

    iget-object v1, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    invoke-direct {v0, v1}, Lcom/sunrise/reader/a;-><init>(Lcom/sunrise/reader/j;)V

    iput-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    :goto_0
    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/a;->a(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-virtual {v0}, Lcom/sunrise/reader/a;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/sunrise/reader/a;

    iget-object v1, p0, Lcom/sunrise/reader/c;->f:Lcom/sunrise/reader/j;

    invoke-direct {v0, v1}, Lcom/sunrise/reader/a;-><init>(Lcom/sunrise/reader/j;)V

    iput-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sunrise/reader/c;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sunrise/reader/c;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

    :cond_0
    const-string v0, "BTReaderDriver"

    const-string v1, "\u5173\u95ed\u84dd\u7259\u8bbe\u5907\u8fde\u63a5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-virtual {v0}, Lcom/sunrise/reader/a;->b()I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunrise/reader/c;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :array_0
    .array-data 1
        0xat
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/c;->q:Ljava/util/List;

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/c;->t:Lcom/sunrise/bluetooth/Reader;

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

    invoke-direct {p0}, Lcom/sunrise/reader/c;->k()V

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sunrise/reader/c;->k()V

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

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

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto/16 :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x26

    invoke-direct {p0}, Lcom/sunrise/reader/c;->k()V

    iget-object v0, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

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

.method public f()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sunrise/reader/c;->d:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sunrise/reader/c;->d:[B

    :goto_0
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    const-string v1, "N"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/sunrise/reader/c;->s:Z

    iput-object v2, p0, Lcom/sunrise/reader/c;->d:[B

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v0, "O"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/sunrise/reader/c;->s:Z

    move v0, v1

    goto :goto_1

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method public g()[B
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sunrise/reader/c;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/c;->d:[B

    :goto_0
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    new-array v1, v4, [B

    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/sunrise/reader/c;->v:Ljava/lang/String;

    const-string v0, "BTReaderDriver"

    iget-object v2, p0, Lcom/sunrise/reader/c;->v:Ljava/lang/String;

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

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method public h()Ljava/util/Map;
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

    iget-object v2, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    iget-object v3, p0, Lcom/sunrise/reader/c;->w:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

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

    iget-object v3, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    iget-object v4, p0, Lcom/sunrise/reader/c;->w:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

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

    iget-object v4, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    iget-object v5, p0, Lcom/sunrise/reader/c;->w:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

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

    iget-object v5, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    iget-object v6, p0, Lcom/sunrise/reader/c;->w:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

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

    iget-object v6, p0, Lcom/sunrise/reader/c;->e:Lcom/sunrise/reader/a;

    iget-object v7, p0, Lcom/sunrise/reader/c;->w:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

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
