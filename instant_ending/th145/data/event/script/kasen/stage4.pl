#========================================================================
#	�ؐ�X�g�[���[
#	�X�e�[�W4�@VS�}�~�]�E
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�`�����X�͍������Ȃ��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#�t�F�C�X�摜
,DefineObject,kasen,-360,0,false
,DefineObject,mamizou,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,kasen_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0



#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,kasen,�ؐ�_�f1,0,0
,th145_Show,kasen,-1280	,

,SetFocus,kasen
���������s������[\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_�{1,0,0
�������̎p����������Ȃ���\n�v��������Ɏ��W�߂����Ă�\n�Ȃ��\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
�{�[�������ȏ㑶�݂��Ă���\n�Ȃ�đz��O������\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_�f1,0,0
���W�߂���Ď���\n�������������񂾂�\,c11x2,0,0
,ClearBalloon,kasen


# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,th145_Show,mamizou,-1280	,#�}�~�]�E�t�F�C�X�\���J�n
�Ȃ񂶂Ⴂ\n�����\,a05x2,0,0
,ClearBalloon,mamizou

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
���܂���\n��������\,a05x2,0,0
,ClearBalloon,kasen


,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���O����\n�������悤�Ƃ��Ă���񂶂�\,c15x3,0,0
,ClearBalloon,mamizou


#�Љ�J�b�g�\���@�}�~�]�E�́u�}�~�]�E_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mamizou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,kasen
,ImageDef,kasen,�ؐ�_�{1,0,0
�c�c\,a05x2,0,0
,ClearBalloon,kasen

,Function,"StopBGM(1000);",# BGM��~

,SetFocus,mamizou		,#�������L�������w��
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�ق��Ă���ƌ�������\n�ǂ���ʎ������ł���l�����\,a15x3,0,0
,ClearBalloon,mamizou

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
�m�ꂽ����\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��2,0,0
����ꂽ����ɂ͎d��������\n�����I�ɑ�l�������ĖႨ����\,a15x3,0,0
,ClearBalloon,kasen


#���҃t�F�C�X�P��
,th145_Hide,kasen,-1280,&
,th145_Hide,mamizou,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,mamizou,�}�~�]�E_�]1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,mamizou
�����ɋ����\n�������������������\,a11x2,0,0



,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,mamizou,�}�~�]�E_��1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,mamizou
�܂������܂�����\n�~�Q����\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
�ق��Ă��������\n����ȏ㉽�����Ȃ�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���̋�Ԃ̊����m���Ă邼��\n�O�̐��E�̕�����\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���O���񌋊E��\n�����󂯂�����\,c11x2,0,0
,ClearBalloon,mamizou


,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
�ق��c�c\n�ق����͖����ƁH\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
������\n����Ȃɂ������ł����������\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
���z���̃��[���͒m���Ă��邪\n�N�͊O�̐��E���痈���d������\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���O���񂪉����̐��E��\n�s�����Ƃ����Ƃ��v���\,a15x3,0,0
,ClearBalloon,mamizou


,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
���͂��ꂩ��O�̐��E�ɕ���\n�c�c������񗝗R�͔閧��\,a15x3,0,0
,ClearBalloon,kasen



,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
�ق����ق���\n���ł������킢\n���Ⴀ�_�Ђ̌�n�����Ă�邼��\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_��1,0,0
�����ɋA���Ă���\n�O�����|��Ȃ����낤��\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,mamizou
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���y�Y���y���݂ɑ҂��Ă邼\n���n�̃C�S�������̂�\,a15x3,0,0
,ClearBalloon,mamizou




,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
