.class Lcom/sunrise/reader/ReaderManagerService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/ReaderManagerService;-><init>(Landroid/content/Context;Lcom/sunrise/reader/ManagerInfo;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/reader/ReaderManagerService;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/ReaderManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderManagerService$2;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/reader/ReaderServerInfo;Lcom/sunrise/reader/ReaderServerInfo;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v0

    invoke-virtual {p2}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sunrise/reader/ReaderServerInfo;

    check-cast p2, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sunrise/reader/ReaderManagerService$2;->a(Lcom/sunrise/reader/ReaderServerInfo;Lcom/sunrise/reader/ReaderServerInfo;)I

    move-result v0

    return v0
.end method
