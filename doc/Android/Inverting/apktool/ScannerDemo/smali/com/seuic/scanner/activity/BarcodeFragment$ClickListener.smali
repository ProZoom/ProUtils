.class Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;
.super Ljava/lang/Object;
.source "BarcodeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/BarcodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickListener"
.end annotation


# instance fields
.field private result:I

.field public selectIndex:I

.field final synthetic this$0:Lcom/seuic/scanner/activity/BarcodeFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V
    .locals 1

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    const/4 v0, 0x0

    iput v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    return-void
.end method

.method private HHPScannerPostCodeStateUpdate(II)V
    .locals 2
    .param p1, "PostCodeId"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 1245
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_1

    .line 1246
    const/16 v0, 0x261

    if-eq p1, v0, :cond_0

    const/16 v0, 0x262

    if-eq p1, v0, :cond_0

    const/16 v0, 0x264

    if-eq p1, v0, :cond_0

    const/16 v0, 0x265

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1251
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$700()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/model/ParamObject;->setValue(I)V

    .line 1252
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$800()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/model/ParamObject;->setValue(I)V

    .line 1253
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$900()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/model/ParamObject;->setValue(I)V

    .line 1254
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1000()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/model/ParamObject;->setValue(I)V

    .line 1257
    :cond_1
    return-void
.end method

.method static synthetic access$1502(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;
    .param p1, "x1"    # I

    .prologue
    .line 1090
    iput p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    return p1
.end method

.method static synthetic access$1600(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;II)V
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1090
    invoke-direct {p0, p1, p2}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->setOcrConfig(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;Landroid/content/DialogInterface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;
    .param p1, "x1"    # Landroid/content/DialogInterface;
    .param p2, "x2"    # Z

    .prologue
    .line 1090
    invoke-direct {p0, p1, p2}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->closeDialog(Landroid/content/DialogInterface;Z)V

    return-void
.end method

.method private closeDialog(Landroid/content/DialogInterface;Z)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "close"    # Z

    .prologue
    .line 1260
    if-eqz p2, :cond_0

    .line 1261
    const/4 v2, 0x0

    sput-boolean v2, Lcom/seuic/scanner/activity/BarcodeFragment;->onshowing:Z

    .line 1265
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1267
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1268
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setOcrConfig(II)V
    .locals 7
    .param p1, "ocrFont"    # I
    .param p2, "ocrLength"    # I

    .prologue
    .line 1152
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-virtual {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "OcrConfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1155
    .local v0, "OcrSetPreference":Landroid/content/SharedPreferences;
    const-string v3, "1"

    .line 1156
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1160
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1163
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v4, v4, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    check-cast v4, Lcom/seuic/scanner/HHPScanner;

    invoke-virtual {v4, v3}, Lcom/seuic/scanner/HHPScanner;->setOCRTemplate(Ljava/lang/String;)V

    .line 1164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1165
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ocr"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1166
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1167
    return-void
.end method

.method private setOcrConfigDial()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1171
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1172
    .local v7, "OcrDialog":Landroid/app/AlertDialog$Builder;
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 1174
    .local v3, "mOcrBind":Landroid/util/SparseIntArray;
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1176
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1177
    .local v9, "layout":Landroid/view/LayoutInflater;
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 1179
    .local v11, "view":Landroid/view/View;
    const v0, 0x7f0a004b

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1180
    .local v2, "m_RadioGroup":Landroid/widget/RadioGroup;
    const v0, 0x7f0a0052

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1182
    .local v4, "ocrLengthEdit":Landroid/widget/EditText;
    const v0, 0x7f0a004c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v3, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1183
    const/4 v1, 0x2

    const v0, 0x7f0a004d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1184
    const/4 v1, 0x3

    const v0, 0x7f0a004e

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1185
    const/4 v1, 0x4

    const v0, 0x7f0a004f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1186
    const/4 v1, 0x5

    const v0, 0x7f0a0050

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1188
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "OcrConfig"

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1189
    .local v8, "OcrSetPreference":Landroid/content/SharedPreferences;
    const-string v0, "ocr"

    const-string v1, "13777777770"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1191
    .local v10, "ocrString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1192
    .local v5, "ocrCurrentFont":I
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 1193
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v6, v0, -0x3

    .line 1194
    .local v6, "ocrCurrentLength":I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    invoke-direct {p0, v5, v6}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->setOcrConfig(II)V

    .line 1201
    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1202
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;-><init>(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;Landroid/widget/RadioGroup;Landroid/util/SparseIntArray;Landroid/widget/EditText;II)V

    invoke-virtual {v7, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1232
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$2;

    invoke-direct {v1, p0}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$2;-><init>(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1240
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1241
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1097
    const/4 v4, -0x1

    if-le p2, v4, :cond_0

    .line 1098
    iput p2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    .line 1148
    :goto_0
    return-void

    .line 1100
    :cond_0
    const/4 v4, -0x3

    if-ne p2, v4, :cond_5

    .line 1101
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1300()Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1103
    :try_start_0
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1300()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1105
    .local v3, "temp":I
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 1106
    .local v2, "min":I
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v1, v4, v5

    .line 1108
    .local v1, "max":I
    if-lt v3, v2, :cond_1

    if-le v3, v1, :cond_2

    .line 1109
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "temp":I
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v5, v5, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v6, 0x7f070074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1116
    invoke-direct {p0, p1, v7}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->closeDialog(Landroid/content/DialogInterface;Z)V

    goto :goto_0

    .line 1112
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "temp":I
    :cond_2
    :try_start_1
    iput v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1132
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "temp":I
    :cond_3
    :goto_1
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v4

    iget v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    if-eq v4, v5, :cond_4

    .line 1134
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v4

    iget v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    invoke-direct {p0, v4, v5}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->HHPScannerPostCodeStateUpdate(II)V

    .line 1136
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v4

    iget v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    invoke-static {v4, v5}, Lcom/seuic/scanner/util/ScannerManager;->setParams(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1137
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    iget v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    invoke-virtual {v4, v5}, Lcom/seuic/scanner/model/ParamObject;->setValue(I)V

    .line 1138
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$100()Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->notifyDataSetChanged()V

    .line 1144
    :cond_4
    :goto_2
    invoke-direct {p0, p1, v6}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->closeDialog(Landroid/content/DialogInterface;Z)V

    .line 1146
    :cond_5
    sput-boolean v7, Lcom/seuic/scanner/activity/BarcodeFragment;->onshowing:Z

    goto/16 :goto_0

    .line 1119
    :cond_6
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getChoices()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1121
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v4

    iget v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    aget v4, v4, v5

    iput v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    .line 1123
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v4

    const/16 v5, 0x332

    if-ne v4, v5, :cond_3

    .line 1124
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v4, v4, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v4, v4, Lcom/seuic/scanner/HHPScanner;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    if-ne v4, v6, :cond_3

    .line 1125
    invoke-direct {p0}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->setOcrConfigDial()V

    goto :goto_1

    .line 1129
    :cond_7
    iget v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    iput v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->result:I

    goto/16 :goto_1

    .line 1140
    :cond_8
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "Fail"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
