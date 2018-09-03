.class Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;
.super Lcom/bjw/ComAssistant/SerialHelper;
.source "ComAssistantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerialControl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method public constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Lcom/bjw/ComAssistant/SerialHelper;-><init>()V

    .line 644
    return-void
.end method


# virtual methods
.method protected onDataReceived(Lcom/bjw/bean/ComBean;)V
    .locals 1
    .param p1, "ComRecData"    # Lcom/bjw/bean/ComBean;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->DispQueue:Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

    invoke-virtual {v0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->AddQueue(Lcom/bjw/bean/ComBean;)V

    .line 662
    return-void
.end method
