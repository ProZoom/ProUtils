.class Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;
.super Ljava/lang/Thread;
.source "ComAssistantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispQueueThread"
.end annotation


# instance fields
.field private QueueList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bjw/bean/ComBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method private constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 1

    .prologue
    .line 665
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 666
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->QueueList:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;)Lcom/bjw/ComAssistant/ComAssistantActivity;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized AddQueue(Lcom/bjw/bean/ComBean;)V
    .locals 1
    .param p1, "ComData"    # Lcom/bjw/bean/ComBean;

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->QueueList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 669
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 670
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    return-void

    .line 672
    :cond_1
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->QueueList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bjw/bean/ComBean;

    .local v0, "ComData":Lcom/bjw/bean/ComBean;
    if-eqz v0, :cond_0

    .line 674
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v3, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread$1;

    invoke-direct {v3, p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread$1;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;Lcom/bjw/bean/ComBean;)V

    invoke-virtual {v2, v3}, Lcom/bjw/ComAssistant/ComAssistantActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 683
    :try_start_0
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    iget v2, v2, Lcom/bjw/bean/AssistBean;->iReflashTime:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 686
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
