.class Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FocusChangeEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 385
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    if-ne p1, v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    if-ne p1, v0, :cond_4

    .line 396
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    if-ne p1, v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 400
    :cond_5
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 403
    :cond_6
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    if-ne p1, v0, :cond_7

    .line 405
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0
.end method
