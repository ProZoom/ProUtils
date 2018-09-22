.class public Lcom/seuic/scanner/util/AppCache;
.super Ljava/lang/Object;
.source "AppCache.java"


# static fields
.field static cameraOn:Z

.field static fragmentId:I

.field private static isOpened:Ljava/lang/Boolean;

.field static isSrceenOff:Z

.field static mainShown:Z

.field static object:Ljava/lang/Object;

.field private static scanEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/seuic/scanner/util/AppCache;->scanEnable:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/AppCache;->isOpened:Ljava/lang/Boolean;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/seuic/scanner/util/AppCache;->object:Ljava/lang/Object;

    .line 14
    sput-boolean v1, Lcom/seuic/scanner/util/AppCache;->isSrceenOff:Z

    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/seuic/scanner/util/AppCache;->fragmentId:I

    .line 18
    sput-boolean v1, Lcom/seuic/scanner/util/AppCache;->mainShown:Z

    .line 20
    sput-boolean v1, Lcom/seuic/scanner/util/AppCache;->cameraOn:Z

    return-void
.end method

.method public static getCurFragmentId()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/seuic/scanner/util/AppCache;->fragmentId:I

    return v0
.end method

.method public static isMainShown()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/seuic/scanner/util/AppCache;->mainShown:Z

    return v0
.end method

.method public static declared-synchronized isOpened()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 59
    const-class v0, Lcom/seuic/scanner/util/AppCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/seuic/scanner/util/AppCache;->isOpened:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isScanEnable()Z
    .locals 3

    .prologue
    .line 47
    const-class v1, Lcom/seuic/scanner/util/AppCache;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/seuic/scanner/util/AppCache;->object:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    sget-boolean v0, Lcom/seuic/scanner/util/AppCache;->scanEnable:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isSrceenOff()Z
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/seuic/scanner/util/AppCache;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/seuic/scanner/util/AppCache;->isSrceenOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setCameraOn(Z)V
    .locals 0
    .param p0, "cameraOn"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/seuic/scanner/util/AppCache;->cameraOn:Z

    .line 28
    return-void
.end method

.method public static setCurFragmentId(I)V
    .locals 0
    .param p0, "fid"    # I

    .prologue
    .line 71
    sput p0, Lcom/seuic/scanner/util/AppCache;->fragmentId:I

    .line 72
    return-void
.end method

.method public static setMainShown(Z)V
    .locals 0
    .param p0, "mainShown"    # Z

    .prologue
    .line 35
    sput-boolean p0, Lcom/seuic/scanner/util/AppCache;->mainShown:Z

    .line 36
    return-void
.end method

.method public static declared-synchronized setOpened(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "isOpend"    # Ljava/lang/Boolean;

    .prologue
    .line 63
    const-class v0, Lcom/seuic/scanner/util/AppCache;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/seuic/scanner/util/AppCache;->isOpened:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setScanEnable(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 53
    const-class v1, Lcom/seuic/scanner/util/AppCache;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/seuic/scanner/util/AppCache;->object:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    sput-boolean p0, Lcom/seuic/scanner/util/AppCache;->scanEnable:Z

    .line 55
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSrceenOff(Z)V
    .locals 2
    .param p0, "isSrceenOff"    # Z

    .prologue
    .line 43
    const-class v0, Lcom/seuic/scanner/util/AppCache;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/seuic/scanner/util/AppCache;->isSrceenOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
