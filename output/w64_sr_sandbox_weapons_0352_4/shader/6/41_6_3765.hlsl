// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:34 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[172];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r0.yzw = t2.Load(r2.y).yzw;
    r4.xyzw = t2.Load(r2.z).xyzw;
    r2.xy = t2.Load(r2.w).xy;
    r5.x = cb0[22].x / r4.y;
    r5.yz = saturate(r2.xy);
    r5.yz = r5.yz * float2(0.25,0.599999964) + float2(0.75,0.300000012);
    r5.w = saturate(r4.z);
    r5.w = r5.w * -0.899999976 + 1;
    r6.x = saturate(r3.w);
    r6.x = 1 + -r6.x;
    r6.x = r6.x * -99.5 + 100;
    r7.y = r5.x + r0.y;
    r7.x = r7.y * r4.y;
    r6.yzw = cb0[170].xyz * r5.yyy;
    r6.yzw = r6.yzw * cb0[169].xxx + r1.xyz;
    r0.y = saturate(cb0[171].x + cb0[171].x);
    r0.y = 1 + -r0.y;
    r6.yzw = r6.yzw * r0.yyy;
    r8.xyz = r6.yzw * cb0[155].xxx + r3.xyz;
    r0.y = saturate(cb0[171].x * r6.x);
    r0.y = 1 + -r0.y;
    r7.z = r0.z * r0.y;
    r0.y = cb0[171].x * r7.z;
    r7.w = r0.y * 6.28318548 + r0.w;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.z = 9.99999975e-006 + r0.y;
    r9.xyz = r1.xyz / r0.zzz;
    r9.xyz = r9.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r0.yzw = r0.yyy ? r9.xyz : r3.xyz;
    r5.x = dot(r6.yzw, r6.yzw);
    r5.x = sqrt(r5.x);
    r9.xy = float2(9.99999975e-006,9.99999975e-005) + r5.xx;
    r9.xzw = r6.yzw / r9.xxx;
    r9.xzw = r9.xzw * float3(0.00999999978,0.00999999978,0.00999999978) + r8.xyz;
    r5.y = cmp(0.00100000005 < r5.x);
    r9.xzw = r5.yyy ? r9.xzw : r8.xyz;
    r10.xyz = cb12[1].xyw * r0.zzz;
    r10.xyz = cb12[0].xyw * r0.yyy + r10.xyz;
    r0.yzw = cb12[2].xyw * r0.www + r10.xyz;
    r0.yzw = cb12[3].xyw + r0.yzw;
    r10.xyz = cb12[1].xyw * r9.zzz;
    r10.xyz = cb12[0].xyw * r9.xxx + r10.xyz;
    r9.xzw = cb12[2].xyw * r9.www + r10.xyz;
    r9.xzw = cb12[3].xyw + r9.xzw;
    r0.yz = r0.yz / r0.ww;
    r0.yz = r0.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xz = r9.xz / r9.ww;
    r9.xz = r9.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yz = cb12[12].xy * r0.yz;
    r10.xy = (int2)r0.yz;
    r10.zw = float2(0,0);
    r0.y = t1.Load(r10.xyw).x;
    r0.y = r0.y * cb0[0].y + cb0[0].x;
    r0.y = 1 / r0.y;
    r9.xz = cb12[12].xy * r9.xz;
    r11.xy = (int2)r9.xz;
    r11.zw = float2(0,0);
    r0.z = t1.Load(r11.xyw).x;
    r0.z = r0.z * cb0[0].y + cb0[0].x;
    r0.z = 1 / r0.z;
    r10.xyz = t0.Load(r10.xyz).xyz;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.y = dot(r10.xyz, r10.xyz);
    r5.y = rsqrt(r5.y);
    r10.xyz = r10.xyz * r5.yyy;
    r11.xyz = t0.Load(r11.xyz).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.y = dot(r11.xyz, r11.xyz);
    r5.y = rsqrt(r5.y);
    r11.xyz = r11.xyz * r5.yyy;
    r5.y = r0.y + -r0.z;
    r6.x = dot(r10.xyz, r11.xyz);
    r6.x = 1 + -r6.x;
    r0.y = r0.y + -r0.w;
    r0.z = r0.z + -r9.w;
    r0.y = r0.y * r0.z;
    r0.y = cmp(r0.y < 0);
    r0.w = cmp(abs(r5.y) < 2.5);
    r0.y = r0.w ? r0.y : 0;
    r0.w = cmp(r6.x < 0.600000024);
    r0.y = r0.w ? r0.y : 0;
    r10.x = cb0[22].x + r1.w;
    r12.y = 1 + r3.w;
    r9.xyz = r6.yzw / r9.yyy;
    r0.w = dot(r11.xyz, r9.xyz);
    r1.w = r0.w + r0.w;
    r13.xyz = -r1.www * r11.xyz + r9.xyz;
    r9.xyz = -r0.www * r11.xyz + r9.xyz;
    r0.w = dot(r9.xyz, r9.xyz);
    r0.w = rsqrt(r0.w);
    r9.xyz = r9.xyz * r0.www + -r13.xyz;
    r9.xyz = r9.xyz * float3(0.699999988,0.699999988,0.699999988) + r13.xyz;
    r0.w = dot(r9.xyz, r9.xyz);
    r0.w = rsqrt(r0.w);
    r9.xyz = r9.xyz * r0.www;
    r9.xyz = r9.xyz * r5.xxx;
    r9.xyz = float3(0.600000024,0.600000024,0.600000024) * r9.xyz;
    r13.xyz = r9.xyz * cb0[22].xxx + r3.xyz;
    r8.xyz = r0.yyy ? r13.xyz : r8.xyz;
    r9.xyz = r0.yyy ? r9.xyz : r6.yzw;
    r12.x = 0;
    r10.y = r3.w;
    r0.yw = r0.yy ? r12.xy : r10.xy;
    r1.w = cmp(abs(r0.z) < 0.100000001);
    r3.w = dot(r11.xyz, r6.yzw);
    r10.xyz = -r3.www * r11.xyz + r6.yzw;
    r5.x = dot(r10.xyz, r10.xyz);
    r5.x = rsqrt(r5.x);
    r10.xyz = r10.xyz * r5.xxx;
    r5.x = dot(r10.xyz, r6.yzw);
    r5.y = 1 + -r5.z;
    r5.x = r5.x * r5.y;
    r3.w = cmp(abs(r3.w) < 0.100000001);
    r3.w = r1.w ? r3.w : 0;
    r5.y = cmp(r5.x < r5.w);
    r1.w = r1.w ? r5.y : 0;
    r5.x = r1.w ? 9.99999975e-005 : r5.x;
    r5.xyz = r10.xyz * r5.xxx;
    r5.xyz = r3.www ? r5.xyz : r9.xyz;
    r6.xyz = cb12[7].xyz + -r8.xyz;
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = rsqrt(r5.w);
    r6.xyz = r6.xyz * r5.www;
    r0.z = 0.00999999978 + -r0.z;
    r6.xyz = r6.xyz * r0.zzz + r3.xyz;
    r6.xyz = r5.xyz * cb0[22].xxx + r6.xyz;
    r6.xyz = r3.www ? r6.xyz : r8.xyz;
    r0.z = r3.w ? r1.w : 0;
    r6.xyz = r0.zzz ? r3.xyz : r6.xyz;
    r1.xyz = r0.zzz ? r1.xyz : r5.xyz;
    r0.z = max(1, r0.w);
    r6.w = r3.w ? r0.z : r0.w;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r1.w = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}