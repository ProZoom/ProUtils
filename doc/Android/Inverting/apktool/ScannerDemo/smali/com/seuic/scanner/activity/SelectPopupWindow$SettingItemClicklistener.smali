.class Lcom/seuic/scanner/activity/SelectPopupWindow$SettingItemClicklistener;
.super Ljava/lang/Object;
.source "SelectPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/SelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingItemClicklistener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/SelectPopupWindow;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingItemClicklistener;->this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 155
    packed-switch p3, :pswitch_data_0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingItemClicklistener;->this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/SelectPopupWindow;->dismiss()V

    .line 174
    return-void

    .line 157
    :pswitch_0
    invoke-static {}, Lcom/seuic/scanner/util/SoundPlayer;->release()V

    .line 158
    invoke-static {}, Lcom/seuic/scanner/activity/SelectPopupWindow;->access$300()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-static {}, Lcom/seuic/scanner/util/SoundPlayer;->release()V

    .line 164
    invoke-static {}, Lcom/seuic/scanner/service/ScanServiceIntent;->stop()V

    .line 165
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    .line 168
    :cond_0
    invoke-static {}, Lcom/seuic/scanner/activity/SelectPopupWindow;->access$400()Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->closeSCN()V

    .line 169
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setOpened(Ljava/lang/Boolean;)V

    .line 170
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
