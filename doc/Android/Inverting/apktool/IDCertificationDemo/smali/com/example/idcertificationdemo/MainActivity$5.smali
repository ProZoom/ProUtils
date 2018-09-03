.class Lcom/example/idcertificationdemo/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/idcertificationdemo/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/idcertificationdemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity$5;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$5;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-virtual {v0}, Lcom/example/idcertificationdemo/MainActivity;->clearUI()V

    .line 281
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$5;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$800(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/example/idcertificationdemo/MainActivity$5$1;

    invoke-direct {v1, p0}, Lcom/example/idcertificationdemo/MainActivity$5$1;-><init>(Lcom/example/idcertificationdemo/MainActivity$5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method
