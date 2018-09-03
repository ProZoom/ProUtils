.class Lcom/bjw/ComAssistant/SerialHelper$SendThread;
.super Ljava/lang/Thread;
.source "SerialHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/SerialHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field public suspendFlag:Z

.field final synthetic this$0:Lcom/bjw/ComAssistant/SerialHelper;


# direct methods
.method private constructor <init>(Lcom/bjw/ComAssistant/SerialHelper;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->suspendFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bjw/ComAssistant/SerialHelper;Lcom/bjw/ComAssistant/SerialHelper$SendThread;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/SerialHelper$SendThread;-><init>(Lcom/bjw/ComAssistant/SerialHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    return-void

    .line 120
    :cond_0
    monitor-enter p0

    .line 122
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->suspendFlag:Z

    if-nez v1, :cond_1

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v1, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    iget-object v2, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-virtual {v2}, Lcom/bjw/ComAssistant/SerialHelper;->getbLoopData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bjw/ComAssistant/SerialHelper;->send([B)V

    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-static {v1}, Lcom/bjw/ComAssistant/SerialHelper;->access$2(Lcom/bjw/ComAssistant/SerialHelper;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public declared-synchronized setResume()V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->suspendFlag:Z

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSuspendFlag()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bjw/ComAssistant/SerialHelper$SendThread;->suspendFlag:Z

    .line 147
    return-void
.end method
