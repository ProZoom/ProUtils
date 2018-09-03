.class public Lcom/sunrise/reader/ReaderManager;
.super Ljava/lang/Object;


# static fields
.field public static final REP_CONNECT_FAILURE:I = -0x1

.field public static final REP_NO_AVAILABLE_SERVICE:I = -0x3

.field public static final REP_SUCCESS_SERVICE:I = 0x0

.field public static final REP_UPLOAD_CONN_FAILURE:I = -0x2

.field public static final REP_UPLOAD_ERROR:I = -0x3

.field public static final REP_UPLOAD_FILE_NOT_EXISTS:I = -0x6

.field public static final REP_UPLOAD_NOT_ALLOWED:I = -0x4

.field public static final REP_UPLOAD_NO_SERVICE:I = -0x1

.field public static final REP_UPLOAD_RECEIVE_FAILURE:I = -0x5

.field public static final REP_UPLOAD_SUCESS:I = 0x0

.field public static final REP_VALIDATION_FAILURE:I = -0x2

.field private static a:Lcom/sunrise/reader/ReaderManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager()Lcom/sunrise/reader/ReaderManager;
    .locals 1

    sget-object v0, Lcom/sunrise/reader/ReaderManager;->a:Lcom/sunrise/reader/ReaderManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/reader/ReaderManager;

    invoke-direct {v0}, Lcom/sunrise/reader/ReaderManager;-><init>()V

    sput-object v0, Lcom/sunrise/reader/ReaderManager;->a:Lcom/sunrise/reader/ReaderManager;

    :cond_0
    sget-object v0, Lcom/sunrise/reader/ReaderManager;->a:Lcom/sunrise/reader/ReaderManager;

    return-object v0
.end method


# virtual methods
.method public getService()I
    .locals 1

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderManagerService;->getService()I

    move-result v0

    return v0
.end method

.method public intManagerAccess(Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/reader/ReaderManager;
    .locals 1

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/reader/ReaderManagerService;->intManagerAccess(Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/reader/ReaderManagerService;

    return-object p0
.end method

.method public intManagerHost(Ljava/lang/String;I)Lcom/sunrise/reader/ReaderManager;
    .locals 1

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/reader/ReaderManagerService;->intManagerHost(Ljava/lang/String;I)Lcom/sunrise/reader/ReaderManagerService;

    return-object p0
.end method

.method public upload(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sunrise/reader/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sunrise"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "btreader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btreader_log-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x6

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->getManager()Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sunrise/reader/ReaderManagerService;->upload(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method
