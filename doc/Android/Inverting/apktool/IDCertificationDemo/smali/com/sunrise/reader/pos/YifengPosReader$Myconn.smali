.class Lcom/sunrise/reader/pos/YifengPosReader$Myconn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sunrise/reader/pos/YifengPosReader;


# direct methods
.method private constructor <init>(Lcom/sunrise/reader/pos/YifengPosReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/pos/YifengPosReader$Myconn;->this$0:Lcom/sunrise/reader/pos/YifengPosReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sunrise/reader/pos/YifengPosReader;Lcom/sunrise/reader/pos/YifengPosReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunrise/reader/pos/YifengPosReader$Myconn;-><init>(Lcom/sunrise/reader/pos/YifengPosReader;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader$Myconn;->this$0:Lcom/sunrise/reader/pos/YifengPosReader;

    invoke-static {p2}, Lcom/yifengcom/yfpos/service/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yifengcom/yfpos/service/IService;

    move-result-object v1

    iput-object v1, v0, Lcom/sunrise/reader/pos/YifengPosReader;->iService:Lcom/yifengcom/yfpos/service/IService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader$Myconn;->this$0:Lcom/sunrise/reader/pos/YifengPosReader;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sunrise/reader/pos/YifengPosReader;->iService:Lcom/yifengcom/yfpos/service/IService;

    return-void
.end method
