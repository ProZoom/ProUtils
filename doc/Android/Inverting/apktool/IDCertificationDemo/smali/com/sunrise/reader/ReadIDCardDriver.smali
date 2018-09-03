.class public Lcom/sunrise/reader/ReadIDCardDriver;
.super Ljava/lang/Object;


# static fields
.field public static final CMD_READ_END:B = -0x1t

.field public static final CMD_RF_CLOSE_ID:B = -0x6ft

.field public static final CMD_RF_EXT_AUTH:B = -0x5bt

.field public static final CMD_RF_ID_IMAGE:B = -0xft

.field public static final CMD_RF_ID_NAME:B = -0x10t

.field public static final CMD_RF_ID_RESPONSE:B = -0xet

.field public static final CMD_RF_ID_RESPONSE_DX:B = -0xdt

.field public static final CMD_RF_ID_RESPONSE_YD:B = -0xct

.field public static final CMD_RF_INT_AUTH:B = -0x5ct

.field public static final CMD_RF_OPEN_ID:B = -0x70t

.field public static final CMD_RF_RANDOM:B = -0x5at

.field public static final CMD_RF_READ_6002:B = -0x60t

.field public static final CMD_RF_READ_6011:B = -0x5ft

.field public static final CMD_RF_READ_6012:B = -0x5et

.field public static final CMD_RF_READ_6013:B = -0x5dt

.field public static final CMD_RF_READ_6031:B = -0x59t

.field public static final CMD_RF_RESET_ID:B = -0x6et

.field public static final CRC_RF_ANDROID:B = 0x10t

.field public static final DRIVER_VERSION:I = 0x1

.field public static final ERR_AGAIN:I = -0x7

.field public static final ERR_NET_AUTHFAIL:I = -0xb

.field public static final ERR_NET_CONNECT:I = -0x9

.field public static final ERR_NET_ERROR:I = -0x3

.field public static final ERR_NET_NOSERVER:I = -0xa

.field public static final ERR_NO_ID:I = -0x4

.field public static final ERR_NO_READER:I = -0x1

.field public static final ERR_READER_BUSY:I = -0x2

.field public static final ERR_READER_ERROR:I = -0x6

.field public static final ERR_READER_INVALIDSN:I = -0xc

.field public static final ERR_READER_OPENID:I = -0x8

.field public static final ERR_SAM_ERROR:I = -0x5

.field public static final MESSAGE_READER_STATE:I = 0x5

.field public static final MESSAGE_READ_ID:I = 0x2

.field public static final MESSAGE_READ_IMAGE:I = 0x4

.field public static final MESSAGE_READ_INFO:I = 0x6

.field public static final MESSAGE_STATE_CHANGE:I = 0x1

.field public static final MESSAGE_STATE_NETWORK:I = 0x3

.field public static final READER_CHANNEL_CARD:I = 0x2

.field public static final READER_CHANNEL_ID:I = 0x1

.field public static final READER_CHANNEL_UNKNOWN:I = 0x3

.field public static final STATE_AUTH_ID:I = 0xc

.field public static final STATE_AUTH_ID_SAM:I = 0xd

.field public static final STATE_NET_CONNECTED:I = 0x6

.field public static final STATE_NET_CONNECTING:I = 0x5

.field public static final STATE_NET_NONE:I = 0x4

.field public static final STATE_NET_TRANSFORMING:I = 0x8

.field public static final STATE_OPEN_ID:I = 0xa

.field public static final STATE_OPEN_ID_SAM:I = 0xb

.field public static final STATE_READER_CONNECTED:I = 0x3

.field public static final STATE_READER_CONNECTING:I = 0x2

.field public static final STATE_READER_NONE:I = 0x0

.field public static final STATE_READER_START:I = 0x1

.field public static final STATE_READER_TRANSFORMING:I = 0x7

.field public static final STATE_READ_ID:I = 0x4

.field public static final STATE_READ_INFO:I = 0xe

.field public static final STATE_READ_INFO_SAM:I = 0xf

.field public static final STATE_READ_INFO_SUCCESS:I = 0x10

.field static final a:Ljava/util/UUID;


# instance fields
.field private b:Lcom/sunrise/reader/i;

.field private c:Lcom/sunrise/reader/j;

.field private d:Lcom/sunrise/reader/h;

.field public dianxinData:Ljava/lang/String;

.field private e:Lcom/sunrise/reader/k;

.field private f:Lcom/sunrise/reader/ReaderManagerService;

.field private g:Lcom/sunrise/reader/ManagerInfo;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:J

.field private k:Z

.field private l:[B

.field private m:Ljava/lang/String;

.field public reader_channel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sunrise/reader/ReadIDCardDriver;->a:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/sunrise/reader/h;Lcom/sunrise/reader/j;Lcom/sunrise/reader/k;Lcom/sunrise/reader/ManagerInfo;Lcom/sunrise/reader/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->reader_channel:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->dianxinData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->i:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->j:J

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

    iput-object p2, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    iput-object p3, p0, Lcom/sunrise/reader/ReadIDCardDriver;->e:Lcom/sunrise/reader/k;

    iput-object p4, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->init()V

    invoke-virtual {p4}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->l:[B

    iput-object p5, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->setStateAdapter(Lcom/sunrise/reader/j;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sunrise/reader/ReadIDCardDriver;)I
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->driverReaderId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sunrise/reader/ReadIDCardDriver;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->j:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/h;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/ReaderManagerService;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sunrise/reader/ReadIDCardDriver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->k:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sunrise/reader/ReadIDCardDriver;Lcom/sunrise/u/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunrise/reader/ReadIDCardDriver;->idReturned(Lcom/sunrise/u/a;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private checkReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->state()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reader state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v1}, Lcom/sunrise/reader/i;->state()I

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

.method private static convertKey(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v1, ""

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-char v4, v2, v1

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    :cond_2
    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v0, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private doReadId(Lcom/sunrise/reader/f;)I
    .locals 4

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/sunrise/reader/p;

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-direct {v1, p0, v0, p1}, Lcom/sunrise/reader/p;-><init>(Lcom/sunrise/reader/ReadIDCardDriver;Lcom/sunrise/reader/i;Lcom/sunrise/reader/f;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/sunrise/reader/p;->start()V

    iget-object v2, p0, Lcom/sunrise/reader/ReadIDCardDriver;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/sunrise/reader/p;->interrupt()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->closeId()I

    :goto_1
    invoke-static {v1}, Lcom/sunrise/reader/p;->a(Lcom/sunrise/reader/p;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunrise/reader/ReadIDCardDriver;->j:J

    invoke-virtual {v1}, Lcom/sunrise/reader/p;->a()I

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

    invoke-virtual {v1}, Lcom/sunrise/reader/p;->interrupt()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->closeId()I

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/reader/p;->interrupt()V

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v1}, Lcom/sunrise/reader/i;->closeId()I

    throw v0
.end method

.method private driverReaderId()I
    .locals 12

    const/4 v3, -0x1

    const/16 v2, -0xa

    const/4 v4, 0x0

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/GuidUtils;->newRandom()Ljava/lang/String;

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/GuidUtils;->getCurrentId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6b63\u5728\u8bfb\u53d6,\u6d41\u6c34\u53f7:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/ManagerInfo;->setSignRandom(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->checkReader()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unicom_china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->readIDPrepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v7, Lcom/sunrise/reader/f;

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    invoke-direct {v7, v0}, Lcom/sunrise/reader/f;-><init>(Lcom/sunrise/reader/j;)V

    :try_start_1
    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_2

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    move v0, v2

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

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
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

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    goto :goto_0

    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    move v0, v2

    goto :goto_0

    :cond_3
    :try_start_8
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->servers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    move v0, v2

    goto :goto_0

    :cond_5
    :try_start_9
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getServerIndex()I

    move-result v5

    if-lez v5, :cond_9

    add-int/lit8 v0, v5, -0x1

    move v1, v0

    :goto_1
    move v6, v4

    move v0, v3

    move v3, v5

    move v5, v4

    :cond_6
    if-nez v6, :cond_a

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v7, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_7
    :goto_2
    const-wide/16 v10, 0x32

    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_3
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4f7f\u7528\u670d\u52a1\u5668 ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "]\u8fdb\u884c\u89e3\u6790"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6b63\u5728\u8bfb\u53d6:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\u6b21"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/sunrise/reader/ReadIDCardDriver;->doReadId(Lcom/sunrise/reader/f;)I
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v9, -0x8

    if-eq v0, v9, :cond_8

    if-eq v0, v2, :cond_8

    const/16 v9, -0xb

    if-eq v0, v9, :cond_8

    if-lez v0, :cond_f

    :cond_8
    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_9
    :try_start_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_1

    :cond_a
    const/4 v9, 0x2

    if-lt v5, v9, :cond_7

    if-ne v3, v1, :cond_d

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v1}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v1

    const-string v2, "china_telecom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/reader/ManagerInfo;->host()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderManagerService;->getManagerInfo()Lcom/sunrise/reader/ManagerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/reader/ManagerInfo;->preferServers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v4

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v7, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;

    invoke-direct {p0, v7}, Lcom/sunrise/reader/ReadIDCardDriver;->doReadId(Lcom/sunrise/reader/f;)I
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    :try_start_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_e

    move v3, v4

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u5668 ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] \u5df2\u7ecf\u8fde\u7eed 2 \u6b21\u5931\u8d25\uff0c\u5207\u6362\u5230\u4e0b\u4e00\u4e2a\u670d\u52a1\u5668"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v0, "BTReaderDriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u670d\u52a1\u5668 ["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "] \u5df2\u7ecf\u8fde\u7eed 2 \u6b21\u5931\u8d25\uff0c\u5207\u6362\u5230\u4e0b\u4e00\u4e2a\u670d\u52a1\u5668"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v3, v0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v7, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v5, v4

    goto/16 :goto_2

    :cond_f
    if-nez v0, :cond_10

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    goto/16 :goto_0

    :cond_10
    :try_start_e
    iget-object v9, p0, Lcom/sunrise/reader/ReadIDCardDriver;->e:Lcom/sunrise/reader/k;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/sunrise/reader/ReadIDCardDriver;->e:Lcom/sunrise/reader/k;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Lcom/sunrise/reader/k;->tryAgain(I)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v7}, Lcom/sunrise/reader/f;->b()V

    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method

.method public static getTime()Ljava/lang/String;
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

.method private idReturned(Lcom/sunrise/u/a;)V
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

    iget-object v2, p0, Lcom/sunrise/reader/ReadIDCardDriver;->l:[B

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/v/f;->a([B[B)[B

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v3, Lcom/sunrise/icardreader/model/IdentityCardZ;

    invoke-direct {v3}, Lcom/sunrise/icardreader/model/IdentityCardZ;-><init>()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

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

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

    invoke-interface {v0, v3}, Lcom/sunrise/reader/h;->idInfo(Lcom/sunrise/icardreader/model/IdentityCardZ;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->authorise()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

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

    iget-object v2, p0, Lcom/sunrise/reader/ReadIDCardDriver;->l:[B

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
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

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
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

    iget-object v1, v3, Lcom/sunrise/icardreader/model/IdentityCardZ;->originalBytes:[B

    invoke-interface {v0, v1}, Lcom/sunrise/reader/h;->idInfoText([B)V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

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

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->d:Lcom/sunrise/reader/h;

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

    invoke-static {v1, v4}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

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

.method private init()V
    .locals 2

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->g:Lcom/sunrise/reader/ManagerInfo;

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ReaderManagerService;->setManagerInfo(Lcom/sunrise/reader/ManagerInfo;)Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_0
    return-void
.end method

.method private readIDPrepare()V
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

    invoke-virtual {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->readSN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/v/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/y/a;->e([B)V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sunrise/reader/ReadIDCardDriver;->m:Ljava/lang/String;

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

    invoke-static {}, Lcom/sunrise/reader/ReadIDCardDriver;->getTime()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public cardPowerOff()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x13

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->checkReader()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->transCmd(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    return-void
.end method

.method public cardPowerOn()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->checkReader()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->cardPowerOn()Lcom/sunrise/u/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SIM\u5361\u4e0a\u7535\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public closeReader()V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->close()I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->k:Z

    return-void
.end method

.method public getReaderName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->checkReader()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->transCmd(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

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

.method public openReader()I
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->closeId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->close()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->setStateAdapter(Lcom/sunrise/reader/j;)V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->open()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public openReader(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->close()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    iget-object v1, p0, Lcom/sunrise/reader/ReadIDCardDriver;->c:Lcom/sunrise/reader/j;

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->setStateAdapter(Lcom/sunrise/reader/j;)V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    invoke-interface {v0, p1}, Lcom/sunrise/reader/i;->open(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public readHardwareVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x26

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->checkReader()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->transCmd(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

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

.method public readId(J)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->dianxinData:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/sunrise/reader/ReadIDCardDriver;->k:Z

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
    iput-wide v2, p0, Lcom/sunrise/reader/ReadIDCardDriver;->j:J

    new-instance v2, Lcom/sunrise/reader/ReadIDCardDriver$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sunrise/reader/ReadIDCardDriver$1;-><init>(Lcom/sunrise/reader/ReadIDCardDriver;[ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/sunrise/reader/ReadIDCardDriver$1;->start()V
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

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sunrise/reader/ReaderManagerService;->setIsBusy(Z)V

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

    nop

    :array_0
    .array-data 4
        -0x5
        0x0
    .end array-data
.end method

.method public readSN()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x28

    const/16 v5, 0x10

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->checkReader()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->transCmd(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

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

.method public setManagerInfo(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->f:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/ReaderManagerService;->setServers(Ljava/util/List;)V

    return-void
.end method

.method public transmitCard([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunrise/reader/ReadIDCardDriver;->checkReader()V

    iget-object v0, p0, Lcom/sunrise/reader/ReadIDCardDriver;->b:Lcom/sunrise/reader/i;

    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sunrise/u/a;->c([B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunrise/reader/i;->transmitAPDU(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TransmitCard\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    return-object v0
.end method
