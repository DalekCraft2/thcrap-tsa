#========================================================================
#	�}�~�]�E�X�g�[���[
#	�X�e�[�W�P�@VS������
#	�ꏊ�F������
#	�X�e�[�W�^�C�g��
#	   �u�B�����̋��Ȗ��@�g���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#�t�F�C�X�摜
,DefineObject,mamizou,-360,0,false
,DefineObject,marisa,-360,0,true

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

,Function,"GameStory_PlayBGM(702);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,mamizou_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,marisa,������_�G1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,mamizou,�}�~�]�E_��1,0,0
,th145_Show,marisa,-1280,&
,th145_Show,mamizou,-1280	,

,SetFocus,mamizou		,
������Ƃ������̂�\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���O����ɕ�����������\n������񂶂�\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_�G1,0,0
�������ȗ\���������\,a11x2,0,0
,ClearBalloon,marisa

#�Љ�J�b�g�\���@�������́u������_�G1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
���̐��E����Ȃ��ꏊ��\n�b���������񂶂Ⴊ��\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�Ȃ񂾂ƁH\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���O����\n�B�����͂Ȃ�����\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�����܂Œm���Ă���H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
�m��Ȃ�����u���Ă���\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_�f1,0,0
�d��������\n��邩\,a05x2,0,0
,ClearBalloon,marisa






# ********************************************
# ********************************************


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,mamizou,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,marisa,������_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#�}�~�]�E�t�F�C�X�\���J�n

,SetFocus,marisa
������������������\n�������񂾂���\,a11x2,0,0

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
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,marisa,������_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#�}�~�]�E�t�F�C�X�\���J�n


,SetFocus,marisa		,
�ق�\n���ꂪ�I�J���g�{�[����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
�قق��H\n����������̂��H\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
�O�̐��E�̎���\n���ׂ悤�Ƃ��Ă�񂾂�H\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
�Ȃ�΂�����W�߂�\n�����Ŋm���߂Ă݂�\,a11x2,0,0
,ClearBalloon,marisa


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
