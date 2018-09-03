.class public Lcom/pax/api/PiccManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PiccManager"

.field private static uniqueInstance:Lcom/pax/api/PiccManager;


# instance fields
.field private mRpcClient:Lpax/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pax/api/PiccManager;->uniqueInstance:Lcom/pax/api/PiccManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lpax/util/a;->a()Lpax/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;
    :try_end_0
    .catch Lcom/pax/api/p; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lpax/util/a;->a(Ljava/lang/Object;Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/pax/api/p;->printStackTrace()V

    new-instance v1, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Lcom/pax/api/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lcom/pax/api/PiccManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    sget-object v0, Lcom/pax/api/PiccManager;->uniqueInstance:Lcom/pax/api/PiccManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pax/api/PiccManager;

    invoke-direct {v0}, Lcom/pax/api/PiccManager;-><init>()V

    sput-object v0, Lcom/pax/api/PiccManager;->uniqueInstance:Lcom/pax/api/PiccManager;

    :cond_0
    sget-object v0, Lcom/pax/api/PiccManager;->uniqueInstance:Lcom/pax/api/PiccManager;

    return-object v0
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PiccManager finalize()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lpax/util/a;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    invoke-virtual {v0}, Lpax/util/a;->finalize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    const/4 v0, 0x0

    sput-object v0, Lcom/pax/api/PiccManager;->uniqueInstance:Lcom/pax/api/PiccManager;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v1, 0x63

    invoke-direct {v0, v1}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
.end method

.method public m1Authority(BB[B[B)V
    .locals 4
    .param p1, "type"    # B
    .param p2, "blkNo"    # B
    .param p3, "pwd"    # [B
    .param p4, "serialNo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lpax/util/OsPaxApi;->M1Authority(BB[B[B)B

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public m1Operate(BB[BB)V
    .locals 4
    .param p1, "type"    # B
    .param p2, "blkNo"    # B
    .param p3, "value"    # [B
    .param p4, "updateBlkNo"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lpax/util/OsPaxApi;->M1Operate(BB[BB)B

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public m1ReadBlock(B)[B
    .locals 4
    .param p1, "blkNo"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v1, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, v0}, Lpax/util/OsPaxApi;->M1ReadBlock(B[B)B

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/pax/api/PiccException;

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0
.end method

.method public m1WriteBlock(B[B)V
    .locals 4
    .param p1, "blkNo"    # B
    .param p2, "blkValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2}, Lpax/util/OsPaxApi;->M1WriteBlock(B[B)B

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public piccClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lpax/util/OsPaxApi;->PiccClose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public piccCmdExchange([BI)[B
    .locals 6
    .param p1, "paucInData"    # [B
    .param p2, "puiRecLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    new-array v0, v4, [I

    aput p2, v0, v1

    new-array v1, p2, [B

    iget-object v2, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v2, v2, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    array-length v3, p1

    invoke-static {v3, p1, v0, v1}, Lpax/util/OsPaxApi;->PiccCmdExchange(I[B[I[B)B

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    aget v0, v0, v3

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    :cond_0
    if-ne v3, v4, :cond_1

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const-string v1, "Parameter error."

    invoke-direct {v0, v3, v1}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_2

    :try_start_4
    new-instance v0, Lcom/pax/api/PiccException;

    const-string v1, "Module not opened."

    invoke-direct {v0, v3, v1}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    :try_start_6
    new-instance v0, Lcom/pax/api/PiccException;

    const-string v1, "Card is not activated."

    invoke-direct {v0, v3, v1}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x4

    if-ne v3, v0, :cond_4

    new-instance v0, Lcom/pax/api/PiccException;

    const-string v1, "Transmission error."

    invoke-direct {v0, v3, v1}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x5

    if-ne v3, v0, :cond_5

    new-instance v0, Lcom/pax/api/PiccException;

    const-string v1, "Protocol error."

    invoke-direct {v0, v3, v1}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0

    :cond_5
    const/16 v0, 0x15

    if-ne v3, v0, :cond_6

    new-instance v0, Lcom/pax/api/PiccException;

    const-string v1, "Command timeout."

    invoke-direct {v0, v3, v1}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/pax/api/PiccException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v3, v1}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public piccDetect(B)Lcom/pax/api/PiccManager$PiccCardInfo;
    .locals 9
    .param p1, "Mode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    new-array v2, v0, [B

    new-array v4, v0, [B

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/16 v1, 0x12c

    new-array v5, v1, [B

    iget-object v1, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v6, v1, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p1, v2, v0, v4, v5}, Lpax/util/OsPaxApi;->PiccDetect(B[B[B[B[B)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    invoke-direct {v0, v1}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_4
    aget-byte v1, v0, v1

    new-array v3, v1, [B

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v7, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/pax/api/PiccManager$PiccCardInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pax/api/PiccManager$PiccCardInfo;-><init>(Lcom/pax/api/PiccManager;[B[B[B[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v6

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public piccInitFelica(BB)V
    .locals 4
    .param p1, "ucRate"    # B
    .param p2, "ucPol"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2}, Lpax/util/OsPaxApi;->PiccInitFelica(BB)B

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public piccIsoCommand(BLcom/pax/api/model/APDU_SEND;)Lcom/pax/api/model/APDU_RESP;
    .locals 4
    .param p1, "cid"    # B
    .param p2, "ApduSend"    # Lcom/pax/api/model/APDU_SEND;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/pax/api/model/APDU_RESP;

    invoke-direct {v0}, Lcom/pax/api/model/APDU_RESP;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/pax/api/model/APDU_SEND;->serialToBuffer()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/pax/api/model/APDU_RESP;->serialToBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v3, v3, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {p1, v1, v2}, Lpax/util/OsPaxApi;->PiccIsoCommand(B[B[B)B

    move-result v1

    invoke-virtual {v0, v2}, Lcom/pax/api/model/APDU_RESP;->serialFromBuffer([B)V

    if-eqz v1, :cond_1

    new-instance v0, Lcom/pax/api/PiccException;

    invoke-direct {v0, v1}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v1, 0x62

    const-string v2, "APDU_SEND cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0
.end method

.method public piccLight(BB)V
    .locals 4
    .param p1, "ucLedIndex"    # B
    .param p2, "ucOnOff"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2}, Lpax/util/OsPaxApi;->PiccLight(BB)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public piccOpen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lpax/util/OsPaxApi;->PiccOpen()B

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public piccRemove(BB)V
    .locals 4
    .param p1, "mode"    # B
    .param p2, "cid"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2}, Lpax/util/OsPaxApi;->PiccRemove(BB)B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/pax/api/PiccException;

    const-string v3, "Parameter error."

    invoke-direct {v2, v0, v3}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :try_start_2
    new-instance v2, Lcom/pax/api/PiccException;

    const-string v3, "Module is not opened."

    invoke-direct {v2, v0, v3}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :try_start_4
    new-instance v2, Lcom/pax/api/PiccException;

    const-string v3, "Card is not activated."

    invoke-direct {v2, v0, v3}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    new-instance v2, Lcom/pax/api/PiccException;

    const-string v3, "Transmission error."

    invoke-direct {v2, v0, v3}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    new-instance v2, Lcom/pax/api/PiccException;

    const-string v3, "Protocol error."

    invoke-direct {v2, v0, v3}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    new-instance v2, Lcom/pax/api/PiccException;

    const-string v3, "Card is still in inductive area"

    invoke-direct {v2, v0, v3}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v2

    :cond_5
    const/16 v2, 0x15

    if-ne v0, v2, :cond_6

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void
.end method

.method public piccSetup(BLcom/pax/api/model/PICC_PARA;)Lcom/pax/api/model/PICC_PARA;
    .locals 4
    .param p1, "mode"    # B
    .param p2, "picc_para"    # Lcom/pax/api/model/PICC_PARA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x77

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-ne p1, v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v1, 0x62

    const-string v2, "PICC_PARA cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/pax/api/PiccException;-><init>(BLjava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/pax/api/model/PICC_PARA;

    .end local p2    # "picc_para":Lcom/pax/api/model/PICC_PARA;
    invoke-direct {p2}, Lcom/pax/api/model/PICC_PARA;-><init>()V

    .restart local p2    # "picc_para":Lcom/pax/api/model/PICC_PARA;
    :cond_2
    invoke-virtual {p2}, Lcom/pax/api/model/PICC_PARA;->serialToBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v1, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, v0}, Lpax/util/OsPaxApi;->PiccSetup(B[B)B

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/pax/api/PiccException;

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/pax/api/PiccException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pax/api/PiccException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_3
    invoke-virtual {p2, v0}, Lcom/pax/api/model/PICC_PARA;->serialFromBuffer([B)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p2
.end method

.method public piccSetupIdCard(BI)V
    .locals 4
    .param p1, "mode"    # B
    .param p2, "uiDirectTransmit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/PiccException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x53

    if-ne p1, v0, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Lcom/pax/api/PiccException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/pax/api/PiccManager;->mRpcClient:Lpax/util/a;

    iget-object v1, v0, Lpax/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2}, Lpax/util/OsPaxApi;->PiccSetupIdCard(BI)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "PiccManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/pax/api/PiccException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/pax/api/PiccException;-><init>(B)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
