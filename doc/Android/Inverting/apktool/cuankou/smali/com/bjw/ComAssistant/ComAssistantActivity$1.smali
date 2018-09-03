.class Lcom/bjw/ComAssistant/ComAssistantActivity$1;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;->buildDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

.field private final synthetic val$editTextReflashTime:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$1;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iput-object p2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$1;->val$editTextReflashTime:Landroid/widget/EditText;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$1;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$1;->val$editTextReflashTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bjw/bean/AssistBean;->iReflashTime:I

    .line 160
    return-void
.end method
