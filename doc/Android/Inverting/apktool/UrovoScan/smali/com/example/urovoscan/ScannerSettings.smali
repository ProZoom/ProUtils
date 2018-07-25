.class public Lcom/example/urovoscan/ScannerSettings;
.super Landroid/preference/PreferenceActivity;
.source "ScannerSettings.java"


# instance fields
.field private mResetScan:Landroid/preference/Preference;

.field private mScanEnter:Landroid/preference/CheckBoxPreference;

.field private mScanKey:Landroid/preference/CheckBoxPreference;

.field private mScanManager:Landroid/device/ScanManager;

.field private mScanOutput:Landroid/preference/CheckBoxPreference;

.field private mScanSounds:Landroid/preference/CheckBoxPreference;

.field private mScanVibrate:Landroid/preference/CheckBoxPreference;

.field private mScanner:Landroid/preference/CheckBoxPreference;

.field root:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 57
    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/device/ScanManager;->getOutputParameter(I)I

    move-result v0

    .line 59
    .local v0, "type":I
    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_2

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mScanKey:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    :cond_2
    if-ne v0, v5, :cond_3

    .line 65
    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mResetScan:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    :cond_3
    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mScanner:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    invoke-virtual {v1}, Landroid/device/ScanManager;->getScannerState()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mScanKey:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    invoke-virtual {v1}, Landroid/device/ScanManager;->getTriggerLockState()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 73
    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mScanOutput:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/device/ScanManager;->getOutputParameter(I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 74
    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mScanSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    invoke-virtual {v1, v2}, Landroid/device/ScanManager;->getOutputParameter(I)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mScanVibrate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/device/ScanManager;->getOutputParameter(I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    iget-object v1, p0, Lcom/example/urovoscan/ScannerSettings;->mScanEnter:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    invoke-virtual {v4, v6}, Landroid/device/ScanManager;->getOutputParameter(I)I

    move-result v4

    if-ne v4, v2, :cond_9

    :goto_6
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 70
    goto :goto_1

    :cond_5
    move v1, v2

    .line 71
    goto :goto_2

    :cond_6
    move v1, v3

    .line 73
    goto :goto_3

    :cond_7
    move v1, v3

    .line 74
    goto :goto_4

    :cond_8
    move v1, v3

    .line 75
    goto :goto_5

    :cond_9
    move v2, v3

    .line 76
    goto :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    .line 42
    iget-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 45
    :cond_0
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/ScannerSettings;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->root:Landroid/preference/PreferenceScreen;

    .line 47
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "open_scanner"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanner:Landroid/preference/CheckBoxPreference;

    .line 48
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_scan_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanKey:Landroid/preference/CheckBoxPreference;

    .line 49
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "scanner_keyboard_output"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanOutput:Landroid/preference/CheckBoxPreference;

    .line 50
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "scanner_beep"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanSounds:Landroid/preference/CheckBoxPreference;

    .line 51
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "scanner_vibrate"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanVibrate:Landroid/preference/CheckBoxPreference;

    .line 52
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "scanner_enter"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanEnter:Landroid/preference/CheckBoxPreference;

    .line 53
    invoke-virtual {p0}, Lcom/example/urovoscan/ScannerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "reset_def"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mResetScan:Landroid/preference/Preference;

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    .line 90
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 96
    new-instance v0, Landroid/device/ScanManager;

    invoke-direct {v0}, Landroid/device/ScanManager;-><init>()V

    iput-object v0, p0, Lcom/example/urovoscan/ScannerSettings;->mScanManager:Landroid/device/ScanManager;

    .line 97
    invoke-direct {p0}, Lcom/example/urovoscan/ScannerSettings;->updateState()V

    .line 98
    return-void
.end method
