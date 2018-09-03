.class Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemSelectedEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMA:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 357
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 358
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMB:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 362
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 363
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMC:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_6

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 367
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 368
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMD:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 371
    :cond_7
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 372
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 373
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
