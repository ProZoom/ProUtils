.class Lcom/seuic/scanner/activity/SettingItem;
.super Ljava/lang/Object;
.source "SelectPopupWindow.java"


# instance fields
.field icon:I

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lcom/seuic/scanner/activity/SettingItem;->icon:I

    .line 183
    iput-object p2, p0, Lcom/seuic/scanner/activity/SettingItem;->name:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/seuic/scanner/activity/SettingItem;->icon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingItem;->name:Ljava/lang/String;

    return-object v0
.end method
