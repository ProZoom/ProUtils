.class Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonClear:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextRecDisp:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMA:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$6(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMB:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$6(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMC:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 536
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$6(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_4
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMD:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$6(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0
.end method
