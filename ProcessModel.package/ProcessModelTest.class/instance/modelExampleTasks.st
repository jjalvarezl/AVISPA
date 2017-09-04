example
modelExampleTasks
	"
	(ProcessModelImporter new importFromStream: self new modelExampleTasks readStream )
		tasksGroup viewTaskBlueprint
	"

^ 
	'<?xml version="1.0" encoding="UTF-8"?>
<uma:MethodLibrary xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:uma="http://www.eclipse.org/epf/uma/1.0.5" name="Escritorio" briefDescription="BBR" id="_QxV2AWdTEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" authors="" changeDescription="" version="" tool="epf=1.5.0">
  <MethodElementProperty value="0"/>
  <MethodElementProperty value="_z30dUMMMEd2cupp5YgBGGQ"/>
  <MethodElementProperty value="metodos_dts"/>
  <MethodElementProperty value="_Y2afsGdTEd6jZ-22VLqOFA"/>
  <MethodElementProperty value="BBROrganizationalProcess"/>
  <MethodPlugin name="BBROrganizationalProcess" briefDescription="" id="_Y2afsGdTEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" authors="" changeDate="2009-07-09T11:17:13" changeDescription="" version="" supporting="false" userChangeable="true">
    <MethodPackage xsi:type="uma:ContentCategoryPackage" name="ContentCategories" id="_s98gENtOEd6oMdkQLrbzIA">
      <ContentCategory xsi:type="uma:CustomCategory" name="Proceso de Requeimientos" briefDescription="" id="_q0IiIGdWEd6jZ-22VLqOFA" orderingGuide="" presentationName="proceso de requerimientos" suppressed="false" isAbstract="false" variabilityType="na">
        <CategorizedElement>_0Skn8WdVEd6jZ-22VLqOFA</CategorizedElement>
        <CategorizedElement>_B7gyMWvdEd6N09lE-muvOQ</CategorizedElement>
      </ContentCategory>
      <ContentCategory xsi:type="uma:CustomCategory" name="roles" briefDescription="" id="_0ps5EGdWEd6jZ-22VLqOFA" orderingGuide="" presentationName="roles" suppressed="false" isAbstract="false" variabilityType="na">
        <CategorizedElement>_1QO_gGdUEd6jZ-22VLqOFA</CategorizedElement>
      </ContentCategory>
      <ContentCategory xsi:type="uma:Discipline" name="Requerimiebtos" briefDescription="" id="_ZxguoGdWEd6jZ-22VLqOFA" orderingGuide="" presentationName="Requerimientos" suppressed="false" isAbstract="false" variabilityType="na">
        <Task>_DBfI4GdVEd6jZ-22VLqOFA</Task>
        <ReferenceWorkflow>_0Skn8WdVEd6jZ-22VLqOFA</ReferenceWorkflow>
      </ContentCategory>
    </MethodPackage>
    <MethodPackage xsi:type="uma:ContentPackage" name="Desarrollo de Requerimientos" briefDescription="" id="_u2RpQGdTEd6jZ-22VLqOFA" orderingGuide="" presentationName="Desarrollo de Requerimientos" suppressed="false" global="false">
      <ContentElement xsi:type="uma:Template" name="Template Caso de Uso" briefDescription="" id="_QrtSoGdUEd6jZ-22VLqOFA" orderingGuide="" presentationName="Template Caso de Uso" suppressed="false" isAbstract="false" variabilityType="na">
        <Presentation xsi:type="uma:GuidanceDescription" name="new_template,_QrtSoGdUEd6jZ-22VLqOFA" briefDescription="" id="-EvTt6tYoez0KPy8ezoPZGA" orderingGuide="" presentationName="" suppressed="false" authors="" changeDescription="" version="" externalId="">
          <MainDescription></MainDescription>
          <KeyConsiderations></KeyConsiderations>
          <Attachment>BBROrganizationalProcess/guidances/templates/resources/Juan Pablo Rodriguez Revision - Tarea 3.doc</Attachment>
        </Presentation>
      </ContentElement>
      <ContentElement xsi:type="uma:Artifact" name="Caso de Uso" briefDescription="" id="_sYzEwGdUEd6jZ-22VLqOFA" orderingGuide="" presentationName="Caso de Uso" suppressed="false" isAbstract="false" variabilityType="na">
        <Example>_UtBYcJtIEd61Bv8wi-m0aw</Example>
        <Template>_QrtSoGdUEd6jZ-22VLqOFA</Template>
      </ContentElement>
      <ContentElement xsi:type="uma:Role" name="Analista" briefDescription="" id="_1QO_gGdUEd6jZ-22VLqOFA" orderingGuide="" presentationName="Analista" suppressed="false" isAbstract="false" variabilityType="na">
        <ResponsibleFor>_sYzEwGdUEd6jZ-22VLqOFA</ResponsibleFor>
      </ContentElement>
      <ContentElement xsi:type="uma:Task" name="analizarCU" briefDescription="" id="_DBfI4GdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="Analizar Caso de Uso" suppressed="false" isAbstract="false" variabilityType="na">
        <Presentation xsi:type="uma:TaskDescription" name=",_DBfI4GdVEd6jZ-22VLqOFA" briefDescription="" id="-L7pIRU4EadGSzPrkdEvcDQ" orderingGuide="" presentationName="" suppressed="false" authors="" changeDescription="" version="" externalId="">
          <MainDescription></MainDescription>
          <KeyConsiderations></KeyConsiderations>
          <Section name="Identificar actores nuevos ydescribirlos" briefDescription="" id="_J_L60GdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" sectionName="" variabilityType="na">
            <Description></Description>
          </Section>
          <Section name="Describir el flujo normal de eventos" briefDescription="" id="_K5vekGdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" sectionName="" variabilityType="na">
            <Description></Description>
          </Section>
          <Section name="Describir el flujo alternativo" briefDescription="" id="_PiRv8GdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" sectionName="" variabilityType="na">
            <Description></Description>
          </Section>
          <Alternatives></Alternatives>
          <Purpose></Purpose>
        </Presentation>
        <Guideline>_pVQnwJtIEd61Bv8wi-m0aw</Guideline>
        <PerformedBy>_1QO_gGdUEd6jZ-22VLqOFA</PerformedBy>
        <MandatoryInput>_XCZScGdVEd6jZ-22VLqOFA</MandatoryInput>
        <Output>_sYzEwGdUEd6jZ-22VLqOFA</Output>
      </ContentElement>
      <ContentElement xsi:type="uma:Artifact" name="SRS" briefDescription="" id="_XCZScGdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="SRS" suppressed="false" isAbstract="false" variabilityType="na">
        <Template>_iTi4gJtIEd61Bv8wi-m0aw</Template>
      </ContentElement>
      <ContentElement xsi:type="uma:Example" name="CU_Example" briefDescription="" id="_UtBYcJtIEd61Bv8wi-m0aw" orderingGuide="" presentationName="CU Ejemplo" suppressed="false" isAbstract="false" variabilityType="na">
        <Presentation xsi:type="uma:GuidanceDescription" name="new_example,_UtBYcJtIEd61Bv8wi-m0aw" briefDescription="" id="-nBzW2wnSc4nmgdStgz4-3g" orderingGuide="" presentationName="" suppressed="false" authors="" changeDate="2009-09-06T09:50:19" changeDescription="" version="" externalId="">
          <MainDescription><![CDATA[<p>
    Un caso de uso es por ejemplo ...
</p>]]></MainDescription>
          <KeyConsiderations></KeyConsiderations>
          <Attachment></Attachment>
        </Presentation>
      </ContentElement>
      <ContentElement xsi:type="uma:Template" name="SRS Template" briefDescription="" id="_iTi4gJtIEd61Bv8wi-m0aw" orderingGuide="" presentationName="Template SRS" suppressed="false" isAbstract="false" variabilityType="na"/>
      <ContentElement xsi:type="uma:Guideline" name="Analisis CU Guia" briefDescription="" id="_pVQnwJtIEd61Bv8wi-m0aw" orderingGuide="" presentationName="Guia de Analisis de CU" suppressed="false" isAbstract="false" variabilityType="na">
        <Example>_UtBYcJtIEd61Bv8wi-m0aw</Example>
      </ContentElement>
      <ContentElement xsi:type="uma:Task" name="prototipar" briefDescription="" id="_Bg8fgNtOEd6oMdkQLrbzIA" orderingGuide="" presentationName="Prototipar" suppressed="false" isAbstract="false" variabilityType="na">
        <PerformedBy>_1QO_gGdUEd6jZ-22VLqOFA</PerformedBy>
        <MandatoryInput>_sYzEwGdUEd6jZ-22VLqOFA</MandatoryInput>
      </ContentElement>
    </MethodPackage>
    <MethodPackage xsi:type="uma:ProcessComponent" name="Requerimientos" briefDescription="" id="_0Skn8GdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" global="false" authors="" changeDescription="" version="">
      <Process xsi:type="uma:CapabilityPattern" name="Requerimientos" briefDescription="" id="_0Skn8WdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="Requerimientos" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="true" prefix="" isEventDriven="false" isOngoing="false" isRepeatable="false" variabilityType="na">
        <MethodElementProperty name="publish_ad" value="false"/>
        <MethodElementProperty name="publish_add" value="false"/>
        <MethodElementProperty name="publish_wpdd" value="false"/>
        <Presentation xsi:type="uma:ProcessDescription" name="Requerimientos,_0Skn8WdVEd6jZ-22VLqOFA" briefDescription="" id="-q_p7sKfwghUUwT7fDus7FQ" orderingGuide="" presentationName="" suppressed="false" authors="" changeDescription="" version="" externalId="" usageGuidance="">
          <MainDescription></MainDescription>
          <KeyConsiderations></KeyConsiderations>
          <Alternatives></Alternatives>
          <HowToStaff></HowToStaff>
          <Purpose></Purpose>
          <Scope></Scope>
          <UsageNotes></UsageNotes>
        </Presentation>
        <BreakdownElement xsi:type="uma:Activity" name="Identificar Actores y CU" briefDescription="" id="_Ck6FIWdWEd6jZ-22VLqOFA" orderingGuide="" presentationName="Identificar Actores y CU" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="true" prefix="" isEventDriven="false" isOngoing="false" isRepeatable="false" variabilityType="na">
          <MethodElementProperty name="publish_ad" value="false"/>
          <MethodElementProperty name="publish_add" value="false"/>
          <MethodElementProperty name="publish_wpdd" value="false"/>
          <SuperActivity>_0Skn8WdVEd6jZ-22VLqOFA</SuperActivity>
        </BreakdownElement>
        <BreakdownElement xsi:type="uma:Activity" name="Especificar Caso de uso" briefDescription="" id="_FDwtMWdWEd6jZ-22VLqOFA" orderingGuide="" presentationName="Especificar Caso de uso" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="true" prefix="" isEventDriven="false" isOngoing="false" isRepeatable="false" variabilityType="na">
          <MethodElementProperty name="publish_ad" value="false"/>
          <MethodElementProperty name="publish_add" value="false"/>
          <MethodElementProperty name="publish_wpdd" value="false"/>
          <SuperActivity>_0Skn8WdVEd6jZ-22VLqOFA</SuperActivity>
          <BreakdownElement xsi:type="uma:TaskDescriptor" name="Especifcar CAso de USo" briefDescription="" id="_Zd4LgGdXEd6jZ-22VLqOFA" orderingGuide="" presentationName="Especifcar CAso de USo" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="false" prefix="" isEventDriven="false" isOngoing="false" isRepeatable="false" isSynchronizedWithSource="false">
            <SuperActivity>_FDwtMWdWEd6jZ-22VLqOFA</SuperActivity>
            <Task>_DBfI4GdVEd6jZ-22VLqOFA</Task>
          </BreakdownElement>
        </BreakdownElement>
        <DefaultContext>_ob9mUGdVEd6jZ-22VLqOFA</DefaultContext>
        <ValidContext>_ob9mUGdVEd6jZ-22VLqOFA</ValidContext>
      </Process>
    </MethodPackage>
    <MethodPackage xsi:type="uma:ProcessComponent" name="DiseÃ±o" briefDescription="" id="_B7gyMGvdEd6N09lE-muvOQ" orderingGuide="" presentationName="" suppressed="false" global="false" authors="" changeDescription="" version="">
      <Process xsi:type="uma:CapabilityPattern" name="DiseÃ±o" briefDescription="" id="_B7gyMWvdEd6N09lE-muvOQ" orderingGuide="" presentationName="DiseÃ±o" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="true" prefix="" isEventDriven="false" isOngoing="false" isRepeatable="false" variabilityType="na">
        <Presentation xsi:type="uma:ProcessDescription" name="DiseÃ±o,_B7gyMWvdEd6N09lE-muvOQ" briefDescription="" id="-4_QTU_lybFzPFTiokOHRbw" orderingGuide="" presentationName="" suppressed="false" authors="" changeDescription="" version="" externalId="" usageGuidance="">
          <MainDescription></MainDescription>
          <KeyConsiderations></KeyConsiderations>
          <Alternatives></Alternatives>
          <HowToStaff></HowToStaff>
          <Purpose></Purpose>
          <Scope></Scope>
          <UsageNotes></UsageNotes>
        </Presentation>
        <BreakdownElement xsi:type="uma:TaskDescriptor" name="analizarCU" briefDescription="" id="_KHhaQGvxEd6N09lE-muvOQ" orderingGuide="" presentationName="Analizar Caso de Uso" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="false" prefix="" isEventDriven="false" isOngoing="false" isRepeatable="false" isSynchronizedWithSource="true">
          <SuperActivity>_B7gyMWvdEd6N09lE-muvOQ</SuperActivity>
          <Task>_DBfI4GdVEd6jZ-22VLqOFA</Task>
          <PerformedPrimarilyBy>_KKqN0GvxEd6N09lE-muvOQ</PerformedPrimarilyBy>
          <MandatoryInput>_KLQDsGvxEd6N09lE-muvOQ</MandatoryInput>
          <Output>_KLQDsWvxEd6N09lE-muvOQ</Output>
          <Step name="Identificar actores nuevos ydescribirlos" briefDescription="" id="_J_L60GdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" sectionName="" variabilityType="na">
            <Description></Description>
          </Step>
          <Step name="Describir el flujo normal de eventos" briefDescription="" id="_K5vekGdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" sectionName="" variabilityType="na">
            <Description></Description>
          </Step>
          <Step name="Describir el flujo alternativo" briefDescription="" id="_PiRv8GdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" sectionName="" variabilityType="na">
            <Description></Description>
          </Step>
        </BreakdownElement>
        <BreakdownElement xsi:type="uma:RoleDescriptor" name="Analista" briefDescription="" id="_KKqN0GvxEd6N09lE-muvOQ" orderingGuide="" presentationName="Analista" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="false" prefix="" isSynchronizedWithSource="true">
          <SuperActivity>_B7gyMWvdEd6N09lE-muvOQ</SuperActivity>
          <Role>_1QO_gGdUEd6jZ-22VLqOFA</Role>
          <ResponsibleFor>_KLQDsWvxEd6N09lE-muvOQ</ResponsibleFor>
        </BreakdownElement>
        <BreakdownElement xsi:type="uma:WorkProductDescriptor" name="SRS" briefDescription="" id="_KLQDsGvxEd6N09lE-muvOQ" orderingGuide="" presentationName="SRS" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="false" prefix="" isSynchronizedWithSource="true" activityEntryState="" activityExitState="">
          <SuperActivity>_B7gyMWvdEd6N09lE-muvOQ</SuperActivity>
          <WorkProduct>_XCZScGdVEd6jZ-22VLqOFA</WorkProduct>
        </BreakdownElement>
        <BreakdownElement xsi:type="uma:WorkProductDescriptor" name="Caso de Uso" briefDescription="" id="_KLQDsWvxEd6N09lE-muvOQ" orderingGuide="" presentationName="Caso de Uso" suppressed="false" isAbstract="false" hasMultipleOccurrences="false" isOptional="false" isPlanned="false" prefix="" isSynchronizedWithSource="true" activityEntryState="" activityExitState="">
          <SuperActivity>_B7gyMWvdEd6N09lE-muvOQ</SuperActivity>
          <WorkProduct>_sYzEwGdUEd6jZ-22VLqOFA</WorkProduct>
        </BreakdownElement>
        <DefaultContext>_ob9mUGdVEd6jZ-22VLqOFA</DefaultContext>
        <ValidContext>_ob9mUGdVEd6jZ-22VLqOFA</ValidContext>
      </Process>
    </MethodPackage>
  </MethodPlugin>
  <MethodConfiguration name="CBasica" briefDescription="" id="_ob9mUGdVEd6jZ-22VLqOFA" orderingGuide="" presentationName="" suppressed="false" authors="" changeDescription="" version="">
    <MethodElementProperty name="TouchedByConfigEditor" value="true"/>
    <MethodPluginSelection>_Y2afsGdTEd6jZ-22VLqOFA</MethodPluginSelection>
    <MethodPackageSelection>_0Skn8GdVEd6jZ-22VLqOFA</MethodPackageSelection>
    <MethodPackageSelection>_u2RpQGdTEd6jZ-22VLqOFA</MethodPackageSelection>
    <MethodPackageSelection>_B7gyMGvdEd6N09lE-muvOQ</MethodPackageSelection>
    <MethodPackageSelection>_-p9ETNtNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-p9EQNtNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-uuPgNtNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-uuPgdtNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-p9ES9tNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_s98gENtOEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-p9EQdtNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-p9ETdtNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-p9ETttNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-p9ER9tNEd6oMdkQLrbzIA</MethodPackageSelection>
    <MethodPackageSelection>_-p9ESdtNEd6oMdkQLrbzIA</MethodPackageSelection>
    <ProcessView>_ZxguoGdWEd6jZ-22VLqOFA</ProcessView>
    <ProcessView>_q0IiIGdWEd6jZ-22VLqOFA</ProcessView>
    <ProcessView>_0ps5EGdWEd6jZ-22VLqOFA</ProcessView>
  </MethodConfiguration>
</uma:MethodLibrary>'
