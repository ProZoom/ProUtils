.class Lcom/bjw/ComAssistant/SerialHelper$ReadThread;
.super Ljava/lang/Thread;
.source "SerialHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/SerialHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/SerialHelper;


# direct methods
.method private constructor <init>(Lcom/bjw/ComAssistant/SerialHelper;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bjw/ComAssistant/SerialHelper;Lcom/bjw/ComAssistant/SerialHelper$ReadThread;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;-><init>(Lcom/bjw/ComAssistant/SerialHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-static {v4}, Lcom/bjw/ComAssistant/SerialHelper;->access$0(Lcom/bjw/ComAssistant/SerialHelper;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 92
    const/16 v4, 0x200

    new-array v1, v4, [B

    .line 93
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-static {v4}, Lcom/bjw/ComAssistant/SerialHelper;->access$0(Lcom/bjw/ComAssistant/SerialHelper;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 94
    .local v3, "size":I
    if-lez v3, :cond_2

    .line 95
    new-instance v0, Lcom/bjw/bean/ComBean;

    iget-object v4, p0, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-static {v4}, Lcom/bjw/ComAssistant/SerialHelper;->access$1(Lcom/bjw/ComAssistant/SerialHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v1, v3}, Lcom/bjw/bean/ComBean;-><init>(Ljava/lang/String;[BI)V

    .line 96
    .local v0, "ComRecData":Lcom/bjw/bean/ComBean;
    iget-object v4, p0, Lcom/bjw/ComAssistant/SerialHelper$ReadThread;->this$0:Lcom/bjw/ComAssistant/SerialHelper;

    invoke-virtual {v4, v0}, Lcom/bjw/ComAssistant/SerialHelper;->onDataReceived(Lcom/bjw/bean/ComBean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v0    # "ComRecData":Lcom/bjw/bean/ComBean;
    :cond_2
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 105
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "size":I
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
