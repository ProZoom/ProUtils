.class Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditorActionEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    .line 441
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    if-ne p1, v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    if-ne p1, v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    if-ne p1, v0, :cond_5

    .line 430
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    .line 433
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    if-ne p1, v0, :cond_7

    .line 436
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0

    .line 437
    :cond_7
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    goto :goto_0
.end method
