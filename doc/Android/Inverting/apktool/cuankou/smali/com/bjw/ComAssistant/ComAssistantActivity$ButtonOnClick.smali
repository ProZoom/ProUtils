.class Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method private constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 185
    if-ltz p2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Lcom/bjw/bean/AssistBean;->iComDispCount:I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-static {v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$0(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    goto :goto_0
.end method
