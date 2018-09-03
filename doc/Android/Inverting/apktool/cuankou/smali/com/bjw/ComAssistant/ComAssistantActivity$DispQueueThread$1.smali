.class Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread$1;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

.field private final synthetic val$ComData:Lcom/bjw/bean/ComBean;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;Lcom/bjw/bean/ComBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread$1;->this$1:Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

    iput-object p2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread$1;->val$ComData:Lcom/bjw/bean/ComBean;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread$1;->this$1:Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

    invoke-static {v0}, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;)Lcom/bjw/ComAssistant/ComAssistantActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread$1;->val$ComData:Lcom/bjw/bean/ComBean;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$9(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/bean/ComBean;)V

    .line 679
    return-void
.end method
