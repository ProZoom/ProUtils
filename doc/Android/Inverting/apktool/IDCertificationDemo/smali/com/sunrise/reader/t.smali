.class Lcom/sunrise/reader/t;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/sunrise/reader/ReaderManagerService;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/ReaderManagerService;II)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/t;->c:Lcom/sunrise/reader/ReaderManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sunrise/reader/t;->a:I

    iput p3, p0, Lcom/sunrise/reader/t;->b:I

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sunrise/reader/t;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/reader/t;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sunrise/reader/t;->a:I

    iget v1, p0, Lcom/sunrise/reader/t;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
