#========================================================================
#	���g�X�g�[���[
#	�X�e�[�W2�@VS������
#	�ꏊ�F������
#	�X�e�[�W�^�C�g��
#	   �u�I�J���g�{�[���̎�ށv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#�t�F�C�X�摜
,DefineObject,mokou,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,mokou_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#�����\��ݒ�
,ImageDef,mokou,���g_��1,0,0
,ImageDef,marisa,������_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mokou,-1280,&
,th145_Show,marisa,-1280	,

,ImageDef,marisa,������_�G1,0,0

,SetFocus,marisa		,
���A�������z�������\n�ǂ��������q���H\,a11x2,0,0
,ClearBalloon,marisa

#�Љ�J�b�g�\���@�������́u������_�G1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�I�J���g�{�[����\n�����Ă��邩�H\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�ց[�A���O���˂�\n�{�[���~�������\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�݂�Ȃ��W�߂������Ă�\n���R�������������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,
,ImageDef,marisa,������_�f1,0,0
�{�[���͓���Ȃ���\n�o�Ă��Ȃ����͒m���Ă�ȁH\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�����ܘ_��\n�������Ǝ��˂�\,a11x2,0,0
,ClearBalloon,mokou



,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,mokou,-1280,&
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
,ImageDef,mokou,���g_��1,0,0
,ImageDef,marisa,������_�f1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,marisa
�����͓s�s�`�����g���Ă���\n�l�Ɍ����Ȃ��񂾂�\,a15x3,0,0

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
,ImageDef,mokou,���g_��1,0,0
,ImageDef,marisa,������_��1,0,0

,th145_Show,mokou,-1280	,&,#���g�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#���g�t�F�C�X�\���J�n

,SetFocus,marisa		,
����Ȗ{�C�œ���Ȃ��Ă�\n�ǂ��̂Ɂc�c\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
����Ă��̕���������K�v�Ȃ�\n�������Ă�������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,
�܂�����\n���̃{�[���͂��O�̕���\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
�Ӂ[��\n����͊O�ꂾ��\,a11x2,0,0

,SetFocus,marisa		,
�����悤\n����\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�S�������̐��Ɋ֌W����\n�{�[�����Ė�ł������񂾂�\,a15x3,0,0
,ClearBalloon,mokou


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
