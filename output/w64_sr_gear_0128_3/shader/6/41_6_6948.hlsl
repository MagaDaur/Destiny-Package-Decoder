// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xzw = t0.Load(r2.y).xyz;
    r5.xyzw = t0.Load(r2.z).yzwx;
    r2.xyz = t0.Load(r2.w).yzx;
    r6.xy = saturate(r5.xy);
    r0.yzw = r6.yyy * float3(-1.5,-0.675823987,0.5) + float3(1,0.675823987,0.5);
    r7.xyz = cmp(r6.yyy >= float3(0,0.393332988,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r0.yz = r7.xy * r0.yz;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = r0.y * 0.720000029 + 0.0799999982;
    r0.z = saturate(r3.w);
    r7.xyzw = r0.zzzz * float4(-1.51612902,0,46.6472206,-0.0149670001) + float4(0.516129017,0,-115.451866,0.0149670001);
    r6.y = r0.z * r0.z;
    r7.x = r7.x * r6.y + 1;
    r7.x = min(1, r7.x);
    r7.x = r7.x * 0.75 + 0.25;
    r8.y = r7.x * r0.y;
    r0.y = saturate(r1.w * 0.333332986 + -0.666666985);
    r0.y = r0.y * 0.850000024 + 0.150000006;
    r8.z = r0.w * r0.y;
    r0.y = r6.x * 2 + -3;
    r0.w = r6.x * r6.x;
    r0.y = r0.y * r0.w + 1;
    r0.y = max(0, r0.y);
    r8.w = r0.y * 0.0299999993 + 0.0299999993;
    r9.xyzw = r0.zzzz * float4(6.66666698,90.9620743,17.8480759,0.0180890001) + float4(0,-22.1574287,0.992793977,0.131810993);
    r0.yw = r7.yz * r6.yy + r9.xy;
    r10.xyzw = cmp(r0.zzzz >= float4(0,0.150000006,0.649999976,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r10.xyz + r10.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r7.xz = r7.xz * r0.yw;
    r0.yw = r7.xy + r7.xy;
    r0.y = r0.y + r0.w;
    r0.y = saturate(r7.z * 2 + r0.y);
    r10.x = 3 * r0.y;
    r0.yw = r0.zz * float2(-4.82432508,-0.357360989) + float2(1,0.207460999);
    r0.yw = r9.zw * r6.yy + r0.yw;
    r7.xyz = cmp(r0.zzz >= float3(0,0.273333013,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r0.yw = r7.xy * r0.yw;
    r0.yw = r0.yw + r0.yw;
    r0.y = saturate(r0.y + r0.w);
    r0.yw = float2(-0,-0.5) + r0.yy;
    r0.yw = saturate(r0.yw + r0.yw);
    r0.yw = float2(150,350) * r0.yw;
    r10.y = dot(float2(1,1), r0.yw);
    r9.xyzw = r0.zzzz * float4(-1.49293602,4.52644682,2.10488892,-1.56653202) + float4(-1.32715702,-7.22684479,-1.77680194,5.966465);
    r11.xyzw = r0.zzzz * float4(0,1.86355197,-1.85711706,-7.24232101) + float4(1,0.808694005,1.61027598,2.84229493);
    r9.xyzw = r9.xyzw * r6.yyyy + r11.xyzw;
    r11.xyzw = cmp(r0.zzzz >= float4(0,0.283333004,0.527778029,0.755555987));
    r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r0.yz = cmp(r0.zz >= float2(0.988888979,1));
    r0.zw = r0.yz ? float2(1,1) : 0;
    r7.xyz = r11.xyz + r11.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r7.xyz = r7.xyz * r9.xyz;
    r0.z = r0.z + r0.w;
    r0.z = 9.99999997e-007 + r0.z;
    r0.z = 0.5 * r0.z;
    r0.z = frac(r0.z);
    r0.w = 2;
    r7.xy = r0.ww * r7.xy;
    r0.z = dot(r0.zz, r7.ww);
    r6.y = r7.x + r7.y;
    r0.w = r0.w * r7.z + r6.y;
    r0.w = r9.w * r11.w + r0.w;
    r0.y = saturate(r0.y ? r0.z : r0.w);
    r7.xyz = float3(1,0.404821992,0) * r0.yyy;
    r10.w = saturate(r2.x);
    r0.x = mad(9, (int)vThreadID.x, (int)r0.x);
    r6.z = 0.349999994;
    r6.w = cb0[3].w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.zzxw
    r9.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.yyyy, r3.xyzw
    r7.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.zzzz, r7.xyzw
    r4.xy = r6.xw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.wwww, r4.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r8.x = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r8.xyzw
    r10.z = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r10.xyzw
    r5.w = r2.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}